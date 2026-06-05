import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

class Documents extends Table {
  TextColumn get id => text()();
  TextColumn get path => text()();
  TextColumn get title => text()();
  TextColumn get author => text().nullable()();
  TextColumn get coverPath => text().nullable()();
  TextColumn get format => text()();
  TextColumn get detectedType => text()();
  TextColumn get preferredMode => text()();
  IntColumn get totalPages => integer()();
  IntColumn get lastPage => integer().withDefault(const Constant(0))();
  RealColumn get lastScrollOffset => real().withDefault(const Constant(0))();
  RealColumn get lastZoom => real().withDefault(const Constant(1.0))();
  DateTimeColumn get addedAt => dateTime()();
  DateTimeColumn get lastOpenedAt => dateTime().nullable()();
  IntColumn get fileSizeBytes => integer()();
  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();
  TextColumn get tags => text().withDefault(const Constant('[]'))();
  TextColumn get categoryId => text().nullable()();
  IntColumn get totalReadingSeconds => integer().withDefault(const Constant(0))();
  RealColumn get readingProgress => real().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}

class Bookmarks extends Table {
  TextColumn get id => text()();
  TextColumn get documentId => text().references(Documents, #id)();
  IntColumn get page => integer()();
  RealColumn get scrollOffset => real()();
  TextColumn get type => text()();
  TextColumn get note => text().nullable()();
  TextColumn get highlightedText => text().nullable()();
  TextColumn get color => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

class Categories extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get color => text()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}

class ReadingSessions extends Table {
  TextColumn get id => text()();
  TextColumn get documentId => text().references(Documents, #id)();
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime().nullable()();
  IntColumn get pagesRead => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [Documents, Bookmarks, Categories, ReadingSessions])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'docreader.db'));

  @override
  int get schemaVersion => 1;

  Stream<List<Document>> watchAllDocuments() => select(documents).watch();

  Future<void> upsertDocument(DocumentsCompanion doc) =>
      into(documents).insertOnConflictUpdate(doc);

  Future<void> updateReadingProgress({
    required String id,
    required int lastPage,
    required double lastScrollOffset,
    required double lastZoom,
    required double progress,
  }) =>
      (update(documents)..where((d) => d.id.equals(id))).write(
        DocumentsCompanion(
          lastPage: Value(lastPage),
          lastScrollOffset: Value(lastScrollOffset),
          lastZoom: Value(lastZoom),
          readingProgress: Value(progress),
          lastOpenedAt: Value(DateTime.now()),
        ),
      );

  Stream<List<Bookmark>> watchBookmarksForDocument(String docId) =>
      (select(bookmarks)..where((b) => b.documentId.equals(docId))).watch();

  Future<void> insertBookmark(BookmarksCompanion bookmark) =>
      into(bookmarks).insert(bookmark);

  Future<void> deleteBookmark(String id) =>
      (delete(bookmarks)..where((b) => b.id.equals(id))).go();
}
