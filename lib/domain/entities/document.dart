import 'package:json_annotation/json_annotation.dart';

part 'document.g.dart';

enum DocumentType { novel, book, article, manga, manhwa, manhua, comic, mixed, unknown }
enum DocumentFormat { pdf, docx }
enum ReadingMode { ebook, visual }

@JsonSerializable()
class Document {
  final String id;
  final String path;
  final String title;
  final String? author;
  final String? coverPath;
  final DocumentFormat format;
  final DocumentType detectedType;
  final ReadingMode preferredMode;
  final int totalPages;
  final int lastPage;
  final double lastScrollOffset;
  final double lastZoom;
  final DateTime addedAt;
  final DateTime? lastOpenedAt;
  final int fileSizeBytes;
  final bool isFavorite;
  final List<String> tags;
  final String? categoryId;
  final int totalReadingSeconds;
  final double readingProgress;

  Document({
    required this.id,
    required this.path,
    required this.title,
    this.author,
    this.coverPath,
    required this.format,
    required this.detectedType,
    required this.preferredMode,
    required this.totalPages,
    required this.lastPage,
    required this.lastScrollOffset,
    required this.lastZoom,
    required this.addedAt,
    this.lastOpenedAt,
    required this.fileSizeBytes,
    this.isFavorite = false,
    this.tags = const [],
    this.categoryId,
    this.totalReadingSeconds = 0,
    this.readingProgress = 0,
  });

  factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentToJson(this);
}
