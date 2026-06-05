// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Document _$DocumentFromJson(Map<String, dynamic> json) => Document(
      id: json['id'] as String,
      path: json['path'] as String,
      title: json['title'] as String,
      author: json['author'] as String?,
      coverPath: json['coverPath'] as String?,
      format: $enumDecode(_$DocumentFormatEnumMap, json['format']),
      detectedType: $enumDecode(_$DocumentTypeEnumMap, json['detectedType']),
      preferredMode: $enumDecode(_$ReadingModeEnumMap, json['preferredMode']),
      totalPages: (json['totalPages'] as num).toInt(),
      lastPage: (json['lastPage'] as num).toInt(),
      lastScrollOffset: (json['lastScrollOffset'] as num).toDouble(),
      lastZoom: (json['lastZoom'] as num).toDouble(),
      addedAt: DateTime.parse(json['addedAt'] as String),
      lastOpenedAt: json['lastOpenedAt'] == null
          ? null
          : DateTime.parse(json['lastOpenedAt'] as String),
      fileSizeBytes: (json['fileSizeBytes'] as num).toInt(),
      isFavorite: json['isFavorite'] as bool? ?? false,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      categoryId: json['categoryId'] as String?,
      totalReadingSeconds: (json['totalReadingSeconds'] as num?)?.toInt() ?? 0,
      readingProgress: (json['readingProgress'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'title': instance.title,
      'author': instance.author,
      'coverPath': instance.coverPath,
      'format': _$DocumentFormatEnumMap[instance.format]!,
      'detectedType': _$DocumentTypeEnumMap[instance.detectedType]!,
      'preferredMode': _$ReadingModeEnumMap[instance.preferredMode]!,
      'totalPages': instance.totalPages,
      'lastPage': instance.lastPage,
      'lastScrollOffset': instance.lastScrollOffset,
      'lastZoom': instance.lastZoom,
      'addedAt': instance.addedAt.toIso8601String(),
      'lastOpenedAt': instance.lastOpenedAt?.toIso8601String(),
      'fileSizeBytes': instance.fileSizeBytes,
      'isFavorite': instance.isFavorite,
      'tags': instance.tags,
      'categoryId': instance.categoryId,
      'totalReadingSeconds': instance.totalReadingSeconds,
      'readingProgress': instance.readingProgress,
    };

const _$DocumentFormatEnumMap = {
  DocumentFormat.pdf: 'pdf',
  DocumentFormat.docx: 'docx',
};

const _$DocumentTypeEnumMap = {
  DocumentType.novel: 'novel',
  DocumentType.book: 'book',
  DocumentType.article: 'article',
  DocumentType.manga: 'manga',
  DocumentType.manhwa: 'manhwa',
  DocumentType.manhua: 'manhua',
  DocumentType.comic: 'comic',
  DocumentType.mixed: 'mixed',
  DocumentType.unknown: 'unknown',
};

const _$ReadingModeEnumMap = {
  ReadingMode.ebook: 'ebook',
  ReadingMode.visual: 'visual',
};
