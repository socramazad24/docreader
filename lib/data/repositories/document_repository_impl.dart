import 'dart:io';
import 'package:drift/drift.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as p;
import 'package:uuid/uuid.dart';

import '../../domain/entities/document.dart' as domain;
import '../../domain/repositories/document_repository.dart';
import '../database/app_database.dart' as db;
import '../sources/content_analyzer.dart';

class DocumentRepositoryImpl implements DocumentRepository {
  final db.AppDatabase _db;
  final ContentAnalyzer _analyzer;
  final _uuid = const Uuid();

  DocumentRepositoryImpl(this._db, this._analyzer);

  @override
  Stream<List<domain.Document>> watchDocuments() =>
      _db.watchAllDocuments().map((rows) => rows.map(_rowToDocument).toList());

  @override
  Future<List<domain.Document>> importFiles() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'docx'],
      allowMultiple: true,
    );
    if (result == null) return [];

    final documents = <domain.Document>[];
    for (final file in result.files) {
      if (file.path == null) continue;
      final doc = await _importFile(file.path!);
      if (doc != null) documents.add(doc);
    }
    return documents;
  }

  @override
  Future<List<domain.Document>> scanFolder() async {
    final result = await FilePicker.platform.getDirectoryPath();
    if (result == null) return [];

    final dir = Directory(result);
    final files = dir
        .listSync(recursive: true)
        .whereType<File>()
        .where((f) => f.path.endsWith('.pdf') || f.path.endsWith('.docx'));

    final documents = <domain.Document>[];
    for (final file in files) {
      final doc = await _importFile(file.path);
      if (doc != null) documents.add(doc);
    }
    return documents;
  }

  Future<domain.Document?> _importFile(String path) async {
    try {
      final file = File(path);
      final ext = p.extension(path).toLowerCase();
      final format =
          ext == '.pdf' ? domain.DocumentFormat.pdf : domain.DocumentFormat.docx;
      final analysis = format == domain.DocumentFormat.pdf
          ? await _analyzer.analyzePdf(path)
          : await _analyzer.analyzeDocx(path);

      final doc = db.DocumentsCompanion.insert(
        id: _uuid.v4(),
        path: path,
        title: p.basenameWithoutExtension(path),
        format: format.name,
        detectedType: analysis.detectedType.name,
        preferredMode: analysis.preferredMode.name,
        totalPages: 0,
        addedAt: DateTime.now(),
        fileSizeBytes: await file.length(),
      );

      await _db.upsertDocument(doc);
      final row = await (_db.select(_db.documents)
            ..where((d) => d.id.equals(doc.id.value)))
          .getSingle();
      return _rowToDocument(row);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> updateProgress(
    String id, {
    required int lastPage,
    required double scrollOffset,
    required double zoom,
    required double progress,
  }) =>
      _db.updateReadingProgress(
        id: id,
        lastPage: lastPage,
        lastScrollOffset: scrollOffset,
        lastZoom: zoom,
        progress: progress,
      );

  @override
  Future<void> toggleFavorite(String id) async {
    final doc = await (_db.select(_db.documents)
          ..where((d) => d.id.equals(id)))
        .getSingle();
    await (_db.update(_db.documents)..where((d) => d.id.equals(id))).write(
      db.DocumentsCompanion(isFavorite: Value(!doc.isFavorite)),
    );
  }

  domain.Document _rowToDocument(db.Document row) => domain.Document(
        id: row.id,
        path: row.path,
        title: row.title,
        author: row.author,
        coverPath: row.coverPath,
        format: domain.DocumentFormat.values.byName(row.format),
        detectedType: domain.DocumentType.values.byName(row.detectedType),
        preferredMode: domain.ReadingMode.values.byName(row.preferredMode),
        totalPages: row.totalPages,
        lastPage: row.lastPage,
        lastScrollOffset: row.lastScrollOffset,
        lastZoom: row.lastZoom,
        addedAt: row.addedAt,
        lastOpenedAt: row.lastOpenedAt,
        fileSizeBytes: row.fileSizeBytes,
        isFavorite: row.isFavorite,
        readingProgress: row.readingProgress,
        totalReadingSeconds: row.totalReadingSeconds,
      );
}
