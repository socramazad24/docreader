// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $DocumentsTable extends Documents
    with TableInfo<$DocumentsTable, Document> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DocumentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pathMeta = const VerificationMeta('path');
  @override
  late final GeneratedColumn<String> path = GeneratedColumn<String>(
      'path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _coverPathMeta =
      const VerificationMeta('coverPath');
  @override
  late final GeneratedColumn<String> coverPath = GeneratedColumn<String>(
      'cover_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _formatMeta = const VerificationMeta('format');
  @override
  late final GeneratedColumn<String> format = GeneratedColumn<String>(
      'format', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _detectedTypeMeta =
      const VerificationMeta('detectedType');
  @override
  late final GeneratedColumn<String> detectedType = GeneratedColumn<String>(
      'detected_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _preferredModeMeta =
      const VerificationMeta('preferredMode');
  @override
  late final GeneratedColumn<String> preferredMode = GeneratedColumn<String>(
      'preferred_mode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _totalPagesMeta =
      const VerificationMeta('totalPages');
  @override
  late final GeneratedColumn<int> totalPages = GeneratedColumn<int>(
      'total_pages', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _lastPageMeta =
      const VerificationMeta('lastPage');
  @override
  late final GeneratedColumn<int> lastPage = GeneratedColumn<int>(
      'last_page', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastScrollOffsetMeta =
      const VerificationMeta('lastScrollOffset');
  @override
  late final GeneratedColumn<double> lastScrollOffset = GeneratedColumn<double>(
      'last_scroll_offset', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastZoomMeta =
      const VerificationMeta('lastZoom');
  @override
  late final GeneratedColumn<double> lastZoom = GeneratedColumn<double>(
      'last_zoom', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(1.0));
  static const VerificationMeta _addedAtMeta =
      const VerificationMeta('addedAt');
  @override
  late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>(
      'added_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _lastOpenedAtMeta =
      const VerificationMeta('lastOpenedAt');
  @override
  late final GeneratedColumn<DateTime> lastOpenedAt = GeneratedColumn<DateTime>(
      'last_opened_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _fileSizeBytesMeta =
      const VerificationMeta('fileSizeBytes');
  @override
  late final GeneratedColumn<int> fileSizeBytes = GeneratedColumn<int>(
      'file_size_bytes', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isFavoriteMeta =
      const VerificationMeta('isFavorite');
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
      'is_favorite', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_favorite" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
      'tags', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('[]'));
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
      'category_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _totalReadingSecondsMeta =
      const VerificationMeta('totalReadingSeconds');
  @override
  late final GeneratedColumn<int> totalReadingSeconds = GeneratedColumn<int>(
      'total_reading_seconds', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _readingProgressMeta =
      const VerificationMeta('readingProgress');
  @override
  late final GeneratedColumn<double> readingProgress = GeneratedColumn<double>(
      'reading_progress', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        path,
        title,
        author,
        coverPath,
        format,
        detectedType,
        preferredMode,
        totalPages,
        lastPage,
        lastScrollOffset,
        lastZoom,
        addedAt,
        lastOpenedAt,
        fileSizeBytes,
        isFavorite,
        tags,
        categoryId,
        totalReadingSeconds,
        readingProgress
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'documents';
  @override
  VerificationContext validateIntegrity(Insertable<Document> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path']!, _pathMeta));
    } else if (isInserting) {
      context.missing(_pathMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    }
    if (data.containsKey('cover_path')) {
      context.handle(_coverPathMeta,
          coverPath.isAcceptableOrUnknown(data['cover_path']!, _coverPathMeta));
    }
    if (data.containsKey('format')) {
      context.handle(_formatMeta,
          format.isAcceptableOrUnknown(data['format']!, _formatMeta));
    } else if (isInserting) {
      context.missing(_formatMeta);
    }
    if (data.containsKey('detected_type')) {
      context.handle(
          _detectedTypeMeta,
          detectedType.isAcceptableOrUnknown(
              data['detected_type']!, _detectedTypeMeta));
    } else if (isInserting) {
      context.missing(_detectedTypeMeta);
    }
    if (data.containsKey('preferred_mode')) {
      context.handle(
          _preferredModeMeta,
          preferredMode.isAcceptableOrUnknown(
              data['preferred_mode']!, _preferredModeMeta));
    } else if (isInserting) {
      context.missing(_preferredModeMeta);
    }
    if (data.containsKey('total_pages')) {
      context.handle(
          _totalPagesMeta,
          totalPages.isAcceptableOrUnknown(
              data['total_pages']!, _totalPagesMeta));
    } else if (isInserting) {
      context.missing(_totalPagesMeta);
    }
    if (data.containsKey('last_page')) {
      context.handle(_lastPageMeta,
          lastPage.isAcceptableOrUnknown(data['last_page']!, _lastPageMeta));
    }
    if (data.containsKey('last_scroll_offset')) {
      context.handle(
          _lastScrollOffsetMeta,
          lastScrollOffset.isAcceptableOrUnknown(
              data['last_scroll_offset']!, _lastScrollOffsetMeta));
    }
    if (data.containsKey('last_zoom')) {
      context.handle(_lastZoomMeta,
          lastZoom.isAcceptableOrUnknown(data['last_zoom']!, _lastZoomMeta));
    }
    if (data.containsKey('added_at')) {
      context.handle(_addedAtMeta,
          addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta));
    } else if (isInserting) {
      context.missing(_addedAtMeta);
    }
    if (data.containsKey('last_opened_at')) {
      context.handle(
          _lastOpenedAtMeta,
          lastOpenedAt.isAcceptableOrUnknown(
              data['last_opened_at']!, _lastOpenedAtMeta));
    }
    if (data.containsKey('file_size_bytes')) {
      context.handle(
          _fileSizeBytesMeta,
          fileSizeBytes.isAcceptableOrUnknown(
              data['file_size_bytes']!, _fileSizeBytesMeta));
    } else if (isInserting) {
      context.missing(_fileSizeBytesMeta);
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
          _isFavoriteMeta,
          isFavorite.isAcceptableOrUnknown(
              data['is_favorite']!, _isFavoriteMeta));
    }
    if (data.containsKey('tags')) {
      context.handle(
          _tagsMeta, tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta));
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    }
    if (data.containsKey('total_reading_seconds')) {
      context.handle(
          _totalReadingSecondsMeta,
          totalReadingSeconds.isAcceptableOrUnknown(
              data['total_reading_seconds']!, _totalReadingSecondsMeta));
    }
    if (data.containsKey('reading_progress')) {
      context.handle(
          _readingProgressMeta,
          readingProgress.isAcceptableOrUnknown(
              data['reading_progress']!, _readingProgressMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Document map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Document(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      path: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}path'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author']),
      coverPath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cover_path']),
      format: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}format'])!,
      detectedType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}detected_type'])!,
      preferredMode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}preferred_mode'])!,
      totalPages: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_pages'])!,
      lastPage: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}last_page'])!,
      lastScrollOffset: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}last_scroll_offset'])!,
      lastZoom: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}last_zoom'])!,
      addedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}added_at'])!,
      lastOpenedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}last_opened_at']),
      fileSizeBytes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}file_size_bytes'])!,
      isFavorite: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!,
      tags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_id']),
      totalReadingSeconds: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_reading_seconds'])!,
      readingProgress: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}reading_progress'])!,
    );
  }

  @override
  $DocumentsTable createAlias(String alias) {
    return $DocumentsTable(attachedDatabase, alias);
  }
}

class Document extends DataClass implements Insertable<Document> {
  final String id;
  final String path;
  final String title;
  final String? author;
  final String? coverPath;
  final String format;
  final String detectedType;
  final String preferredMode;
  final int totalPages;
  final int lastPage;
  final double lastScrollOffset;
  final double lastZoom;
  final DateTime addedAt;
  final DateTime? lastOpenedAt;
  final int fileSizeBytes;
  final bool isFavorite;
  final String tags;
  final String? categoryId;
  final int totalReadingSeconds;
  final double readingProgress;
  const Document(
      {required this.id,
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
      required this.isFavorite,
      required this.tags,
      this.categoryId,
      required this.totalReadingSeconds,
      required this.readingProgress});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['path'] = Variable<String>(path);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || author != null) {
      map['author'] = Variable<String>(author);
    }
    if (!nullToAbsent || coverPath != null) {
      map['cover_path'] = Variable<String>(coverPath);
    }
    map['format'] = Variable<String>(format);
    map['detected_type'] = Variable<String>(detectedType);
    map['preferred_mode'] = Variable<String>(preferredMode);
    map['total_pages'] = Variable<int>(totalPages);
    map['last_page'] = Variable<int>(lastPage);
    map['last_scroll_offset'] = Variable<double>(lastScrollOffset);
    map['last_zoom'] = Variable<double>(lastZoom);
    map['added_at'] = Variable<DateTime>(addedAt);
    if (!nullToAbsent || lastOpenedAt != null) {
      map['last_opened_at'] = Variable<DateTime>(lastOpenedAt);
    }
    map['file_size_bytes'] = Variable<int>(fileSizeBytes);
    map['is_favorite'] = Variable<bool>(isFavorite);
    map['tags'] = Variable<String>(tags);
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<String>(categoryId);
    }
    map['total_reading_seconds'] = Variable<int>(totalReadingSeconds);
    map['reading_progress'] = Variable<double>(readingProgress);
    return map;
  }

  DocumentsCompanion toCompanion(bool nullToAbsent) {
    return DocumentsCompanion(
      id: Value(id),
      path: Value(path),
      title: Value(title),
      author:
          author == null && nullToAbsent ? const Value.absent() : Value(author),
      coverPath: coverPath == null && nullToAbsent
          ? const Value.absent()
          : Value(coverPath),
      format: Value(format),
      detectedType: Value(detectedType),
      preferredMode: Value(preferredMode),
      totalPages: Value(totalPages),
      lastPage: Value(lastPage),
      lastScrollOffset: Value(lastScrollOffset),
      lastZoom: Value(lastZoom),
      addedAt: Value(addedAt),
      lastOpenedAt: lastOpenedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(lastOpenedAt),
      fileSizeBytes: Value(fileSizeBytes),
      isFavorite: Value(isFavorite),
      tags: Value(tags),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      totalReadingSeconds: Value(totalReadingSeconds),
      readingProgress: Value(readingProgress),
    );
  }

  factory Document.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Document(
      id: serializer.fromJson<String>(json['id']),
      path: serializer.fromJson<String>(json['path']),
      title: serializer.fromJson<String>(json['title']),
      author: serializer.fromJson<String?>(json['author']),
      coverPath: serializer.fromJson<String?>(json['coverPath']),
      format: serializer.fromJson<String>(json['format']),
      detectedType: serializer.fromJson<String>(json['detectedType']),
      preferredMode: serializer.fromJson<String>(json['preferredMode']),
      totalPages: serializer.fromJson<int>(json['totalPages']),
      lastPage: serializer.fromJson<int>(json['lastPage']),
      lastScrollOffset: serializer.fromJson<double>(json['lastScrollOffset']),
      lastZoom: serializer.fromJson<double>(json['lastZoom']),
      addedAt: serializer.fromJson<DateTime>(json['addedAt']),
      lastOpenedAt: serializer.fromJson<DateTime?>(json['lastOpenedAt']),
      fileSizeBytes: serializer.fromJson<int>(json['fileSizeBytes']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      tags: serializer.fromJson<String>(json['tags']),
      categoryId: serializer.fromJson<String?>(json['categoryId']),
      totalReadingSeconds:
          serializer.fromJson<int>(json['totalReadingSeconds']),
      readingProgress: serializer.fromJson<double>(json['readingProgress']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'path': serializer.toJson<String>(path),
      'title': serializer.toJson<String>(title),
      'author': serializer.toJson<String?>(author),
      'coverPath': serializer.toJson<String?>(coverPath),
      'format': serializer.toJson<String>(format),
      'detectedType': serializer.toJson<String>(detectedType),
      'preferredMode': serializer.toJson<String>(preferredMode),
      'totalPages': serializer.toJson<int>(totalPages),
      'lastPage': serializer.toJson<int>(lastPage),
      'lastScrollOffset': serializer.toJson<double>(lastScrollOffset),
      'lastZoom': serializer.toJson<double>(lastZoom),
      'addedAt': serializer.toJson<DateTime>(addedAt),
      'lastOpenedAt': serializer.toJson<DateTime?>(lastOpenedAt),
      'fileSizeBytes': serializer.toJson<int>(fileSizeBytes),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'tags': serializer.toJson<String>(tags),
      'categoryId': serializer.toJson<String?>(categoryId),
      'totalReadingSeconds': serializer.toJson<int>(totalReadingSeconds),
      'readingProgress': serializer.toJson<double>(readingProgress),
    };
  }

  Document copyWith(
          {String? id,
          String? path,
          String? title,
          Value<String?> author = const Value.absent(),
          Value<String?> coverPath = const Value.absent(),
          String? format,
          String? detectedType,
          String? preferredMode,
          int? totalPages,
          int? lastPage,
          double? lastScrollOffset,
          double? lastZoom,
          DateTime? addedAt,
          Value<DateTime?> lastOpenedAt = const Value.absent(),
          int? fileSizeBytes,
          bool? isFavorite,
          String? tags,
          Value<String?> categoryId = const Value.absent(),
          int? totalReadingSeconds,
          double? readingProgress}) =>
      Document(
        id: id ?? this.id,
        path: path ?? this.path,
        title: title ?? this.title,
        author: author.present ? author.value : this.author,
        coverPath: coverPath.present ? coverPath.value : this.coverPath,
        format: format ?? this.format,
        detectedType: detectedType ?? this.detectedType,
        preferredMode: preferredMode ?? this.preferredMode,
        totalPages: totalPages ?? this.totalPages,
        lastPage: lastPage ?? this.lastPage,
        lastScrollOffset: lastScrollOffset ?? this.lastScrollOffset,
        lastZoom: lastZoom ?? this.lastZoom,
        addedAt: addedAt ?? this.addedAt,
        lastOpenedAt:
            lastOpenedAt.present ? lastOpenedAt.value : this.lastOpenedAt,
        fileSizeBytes: fileSizeBytes ?? this.fileSizeBytes,
        isFavorite: isFavorite ?? this.isFavorite,
        tags: tags ?? this.tags,
        categoryId: categoryId.present ? categoryId.value : this.categoryId,
        totalReadingSeconds: totalReadingSeconds ?? this.totalReadingSeconds,
        readingProgress: readingProgress ?? this.readingProgress,
      );
  Document copyWithCompanion(DocumentsCompanion data) {
    return Document(
      id: data.id.present ? data.id.value : this.id,
      path: data.path.present ? data.path.value : this.path,
      title: data.title.present ? data.title.value : this.title,
      author: data.author.present ? data.author.value : this.author,
      coverPath: data.coverPath.present ? data.coverPath.value : this.coverPath,
      format: data.format.present ? data.format.value : this.format,
      detectedType: data.detectedType.present
          ? data.detectedType.value
          : this.detectedType,
      preferredMode: data.preferredMode.present
          ? data.preferredMode.value
          : this.preferredMode,
      totalPages:
          data.totalPages.present ? data.totalPages.value : this.totalPages,
      lastPage: data.lastPage.present ? data.lastPage.value : this.lastPage,
      lastScrollOffset: data.lastScrollOffset.present
          ? data.lastScrollOffset.value
          : this.lastScrollOffset,
      lastZoom: data.lastZoom.present ? data.lastZoom.value : this.lastZoom,
      addedAt: data.addedAt.present ? data.addedAt.value : this.addedAt,
      lastOpenedAt: data.lastOpenedAt.present
          ? data.lastOpenedAt.value
          : this.lastOpenedAt,
      fileSizeBytes: data.fileSizeBytes.present
          ? data.fileSizeBytes.value
          : this.fileSizeBytes,
      isFavorite:
          data.isFavorite.present ? data.isFavorite.value : this.isFavorite,
      tags: data.tags.present ? data.tags.value : this.tags,
      categoryId:
          data.categoryId.present ? data.categoryId.value : this.categoryId,
      totalReadingSeconds: data.totalReadingSeconds.present
          ? data.totalReadingSeconds.value
          : this.totalReadingSeconds,
      readingProgress: data.readingProgress.present
          ? data.readingProgress.value
          : this.readingProgress,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Document(')
          ..write('id: $id, ')
          ..write('path: $path, ')
          ..write('title: $title, ')
          ..write('author: $author, ')
          ..write('coverPath: $coverPath, ')
          ..write('format: $format, ')
          ..write('detectedType: $detectedType, ')
          ..write('preferredMode: $preferredMode, ')
          ..write('totalPages: $totalPages, ')
          ..write('lastPage: $lastPage, ')
          ..write('lastScrollOffset: $lastScrollOffset, ')
          ..write('lastZoom: $lastZoom, ')
          ..write('addedAt: $addedAt, ')
          ..write('lastOpenedAt: $lastOpenedAt, ')
          ..write('fileSizeBytes: $fileSizeBytes, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('tags: $tags, ')
          ..write('categoryId: $categoryId, ')
          ..write('totalReadingSeconds: $totalReadingSeconds, ')
          ..write('readingProgress: $readingProgress')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      path,
      title,
      author,
      coverPath,
      format,
      detectedType,
      preferredMode,
      totalPages,
      lastPage,
      lastScrollOffset,
      lastZoom,
      addedAt,
      lastOpenedAt,
      fileSizeBytes,
      isFavorite,
      tags,
      categoryId,
      totalReadingSeconds,
      readingProgress);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Document &&
          other.id == this.id &&
          other.path == this.path &&
          other.title == this.title &&
          other.author == this.author &&
          other.coverPath == this.coverPath &&
          other.format == this.format &&
          other.detectedType == this.detectedType &&
          other.preferredMode == this.preferredMode &&
          other.totalPages == this.totalPages &&
          other.lastPage == this.lastPage &&
          other.lastScrollOffset == this.lastScrollOffset &&
          other.lastZoom == this.lastZoom &&
          other.addedAt == this.addedAt &&
          other.lastOpenedAt == this.lastOpenedAt &&
          other.fileSizeBytes == this.fileSizeBytes &&
          other.isFavorite == this.isFavorite &&
          other.tags == this.tags &&
          other.categoryId == this.categoryId &&
          other.totalReadingSeconds == this.totalReadingSeconds &&
          other.readingProgress == this.readingProgress);
}

class DocumentsCompanion extends UpdateCompanion<Document> {
  final Value<String> id;
  final Value<String> path;
  final Value<String> title;
  final Value<String?> author;
  final Value<String?> coverPath;
  final Value<String> format;
  final Value<String> detectedType;
  final Value<String> preferredMode;
  final Value<int> totalPages;
  final Value<int> lastPage;
  final Value<double> lastScrollOffset;
  final Value<double> lastZoom;
  final Value<DateTime> addedAt;
  final Value<DateTime?> lastOpenedAt;
  final Value<int> fileSizeBytes;
  final Value<bool> isFavorite;
  final Value<String> tags;
  final Value<String?> categoryId;
  final Value<int> totalReadingSeconds;
  final Value<double> readingProgress;
  final Value<int> rowid;
  const DocumentsCompanion({
    this.id = const Value.absent(),
    this.path = const Value.absent(),
    this.title = const Value.absent(),
    this.author = const Value.absent(),
    this.coverPath = const Value.absent(),
    this.format = const Value.absent(),
    this.detectedType = const Value.absent(),
    this.preferredMode = const Value.absent(),
    this.totalPages = const Value.absent(),
    this.lastPage = const Value.absent(),
    this.lastScrollOffset = const Value.absent(),
    this.lastZoom = const Value.absent(),
    this.addedAt = const Value.absent(),
    this.lastOpenedAt = const Value.absent(),
    this.fileSizeBytes = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.tags = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.totalReadingSeconds = const Value.absent(),
    this.readingProgress = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DocumentsCompanion.insert({
    required String id,
    required String path,
    required String title,
    this.author = const Value.absent(),
    this.coverPath = const Value.absent(),
    required String format,
    required String detectedType,
    required String preferredMode,
    required int totalPages,
    this.lastPage = const Value.absent(),
    this.lastScrollOffset = const Value.absent(),
    this.lastZoom = const Value.absent(),
    required DateTime addedAt,
    this.lastOpenedAt = const Value.absent(),
    required int fileSizeBytes,
    this.isFavorite = const Value.absent(),
    this.tags = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.totalReadingSeconds = const Value.absent(),
    this.readingProgress = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        path = Value(path),
        title = Value(title),
        format = Value(format),
        detectedType = Value(detectedType),
        preferredMode = Value(preferredMode),
        totalPages = Value(totalPages),
        addedAt = Value(addedAt),
        fileSizeBytes = Value(fileSizeBytes);
  static Insertable<Document> custom({
    Expression<String>? id,
    Expression<String>? path,
    Expression<String>? title,
    Expression<String>? author,
    Expression<String>? coverPath,
    Expression<String>? format,
    Expression<String>? detectedType,
    Expression<String>? preferredMode,
    Expression<int>? totalPages,
    Expression<int>? lastPage,
    Expression<double>? lastScrollOffset,
    Expression<double>? lastZoom,
    Expression<DateTime>? addedAt,
    Expression<DateTime>? lastOpenedAt,
    Expression<int>? fileSizeBytes,
    Expression<bool>? isFavorite,
    Expression<String>? tags,
    Expression<String>? categoryId,
    Expression<int>? totalReadingSeconds,
    Expression<double>? readingProgress,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (path != null) 'path': path,
      if (title != null) 'title': title,
      if (author != null) 'author': author,
      if (coverPath != null) 'cover_path': coverPath,
      if (format != null) 'format': format,
      if (detectedType != null) 'detected_type': detectedType,
      if (preferredMode != null) 'preferred_mode': preferredMode,
      if (totalPages != null) 'total_pages': totalPages,
      if (lastPage != null) 'last_page': lastPage,
      if (lastScrollOffset != null) 'last_scroll_offset': lastScrollOffset,
      if (lastZoom != null) 'last_zoom': lastZoom,
      if (addedAt != null) 'added_at': addedAt,
      if (lastOpenedAt != null) 'last_opened_at': lastOpenedAt,
      if (fileSizeBytes != null) 'file_size_bytes': fileSizeBytes,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (tags != null) 'tags': tags,
      if (categoryId != null) 'category_id': categoryId,
      if (totalReadingSeconds != null)
        'total_reading_seconds': totalReadingSeconds,
      if (readingProgress != null) 'reading_progress': readingProgress,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DocumentsCompanion copyWith(
      {Value<String>? id,
      Value<String>? path,
      Value<String>? title,
      Value<String?>? author,
      Value<String?>? coverPath,
      Value<String>? format,
      Value<String>? detectedType,
      Value<String>? preferredMode,
      Value<int>? totalPages,
      Value<int>? lastPage,
      Value<double>? lastScrollOffset,
      Value<double>? lastZoom,
      Value<DateTime>? addedAt,
      Value<DateTime?>? lastOpenedAt,
      Value<int>? fileSizeBytes,
      Value<bool>? isFavorite,
      Value<String>? tags,
      Value<String?>? categoryId,
      Value<int>? totalReadingSeconds,
      Value<double>? readingProgress,
      Value<int>? rowid}) {
    return DocumentsCompanion(
      id: id ?? this.id,
      path: path ?? this.path,
      title: title ?? this.title,
      author: author ?? this.author,
      coverPath: coverPath ?? this.coverPath,
      format: format ?? this.format,
      detectedType: detectedType ?? this.detectedType,
      preferredMode: preferredMode ?? this.preferredMode,
      totalPages: totalPages ?? this.totalPages,
      lastPage: lastPage ?? this.lastPage,
      lastScrollOffset: lastScrollOffset ?? this.lastScrollOffset,
      lastZoom: lastZoom ?? this.lastZoom,
      addedAt: addedAt ?? this.addedAt,
      lastOpenedAt: lastOpenedAt ?? this.lastOpenedAt,
      fileSizeBytes: fileSizeBytes ?? this.fileSizeBytes,
      isFavorite: isFavorite ?? this.isFavorite,
      tags: tags ?? this.tags,
      categoryId: categoryId ?? this.categoryId,
      totalReadingSeconds: totalReadingSeconds ?? this.totalReadingSeconds,
      readingProgress: readingProgress ?? this.readingProgress,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (coverPath.present) {
      map['cover_path'] = Variable<String>(coverPath.value);
    }
    if (format.present) {
      map['format'] = Variable<String>(format.value);
    }
    if (detectedType.present) {
      map['detected_type'] = Variable<String>(detectedType.value);
    }
    if (preferredMode.present) {
      map['preferred_mode'] = Variable<String>(preferredMode.value);
    }
    if (totalPages.present) {
      map['total_pages'] = Variable<int>(totalPages.value);
    }
    if (lastPage.present) {
      map['last_page'] = Variable<int>(lastPage.value);
    }
    if (lastScrollOffset.present) {
      map['last_scroll_offset'] = Variable<double>(lastScrollOffset.value);
    }
    if (lastZoom.present) {
      map['last_zoom'] = Variable<double>(lastZoom.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<DateTime>(addedAt.value);
    }
    if (lastOpenedAt.present) {
      map['last_opened_at'] = Variable<DateTime>(lastOpenedAt.value);
    }
    if (fileSizeBytes.present) {
      map['file_size_bytes'] = Variable<int>(fileSizeBytes.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (totalReadingSeconds.present) {
      map['total_reading_seconds'] = Variable<int>(totalReadingSeconds.value);
    }
    if (readingProgress.present) {
      map['reading_progress'] = Variable<double>(readingProgress.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocumentsCompanion(')
          ..write('id: $id, ')
          ..write('path: $path, ')
          ..write('title: $title, ')
          ..write('author: $author, ')
          ..write('coverPath: $coverPath, ')
          ..write('format: $format, ')
          ..write('detectedType: $detectedType, ')
          ..write('preferredMode: $preferredMode, ')
          ..write('totalPages: $totalPages, ')
          ..write('lastPage: $lastPage, ')
          ..write('lastScrollOffset: $lastScrollOffset, ')
          ..write('lastZoom: $lastZoom, ')
          ..write('addedAt: $addedAt, ')
          ..write('lastOpenedAt: $lastOpenedAt, ')
          ..write('fileSizeBytes: $fileSizeBytes, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('tags: $tags, ')
          ..write('categoryId: $categoryId, ')
          ..write('totalReadingSeconds: $totalReadingSeconds, ')
          ..write('readingProgress: $readingProgress, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BookmarksTable extends Bookmarks
    with TableInfo<$BookmarksTable, Bookmark> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookmarksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _documentIdMeta =
      const VerificationMeta('documentId');
  @override
  late final GeneratedColumn<String> documentId = GeneratedColumn<String>(
      'document_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES documents (id)'));
  static const VerificationMeta _pageMeta = const VerificationMeta('page');
  @override
  late final GeneratedColumn<int> page = GeneratedColumn<int>(
      'page', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _scrollOffsetMeta =
      const VerificationMeta('scrollOffset');
  @override
  late final GeneratedColumn<double> scrollOffset = GeneratedColumn<double>(
      'scroll_offset', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _highlightedTextMeta =
      const VerificationMeta('highlightedText');
  @override
  late final GeneratedColumn<String> highlightedText = GeneratedColumn<String>(
      'highlighted_text', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        documentId,
        page,
        scrollOffset,
        type,
        note,
        highlightedText,
        color,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bookmarks';
  @override
  VerificationContext validateIntegrity(Insertable<Bookmark> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('document_id')) {
      context.handle(
          _documentIdMeta,
          documentId.isAcceptableOrUnknown(
              data['document_id']!, _documentIdMeta));
    } else if (isInserting) {
      context.missing(_documentIdMeta);
    }
    if (data.containsKey('page')) {
      context.handle(
          _pageMeta, page.isAcceptableOrUnknown(data['page']!, _pageMeta));
    } else if (isInserting) {
      context.missing(_pageMeta);
    }
    if (data.containsKey('scroll_offset')) {
      context.handle(
          _scrollOffsetMeta,
          scrollOffset.isAcceptableOrUnknown(
              data['scroll_offset']!, _scrollOffsetMeta));
    } else if (isInserting) {
      context.missing(_scrollOffsetMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('highlighted_text')) {
      context.handle(
          _highlightedTextMeta,
          highlightedText.isAcceptableOrUnknown(
              data['highlighted_text']!, _highlightedTextMeta));
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Bookmark map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Bookmark(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      documentId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}document_id'])!,
      page: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}page'])!,
      scrollOffset: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}scroll_offset'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      highlightedText: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}highlighted_text']),
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $BookmarksTable createAlias(String alias) {
    return $BookmarksTable(attachedDatabase, alias);
  }
}

class Bookmark extends DataClass implements Insertable<Bookmark> {
  final String id;
  final String documentId;
  final int page;
  final double scrollOffset;
  final String type;
  final String? note;
  final String? highlightedText;
  final String? color;
  final DateTime createdAt;
  const Bookmark(
      {required this.id,
      required this.documentId,
      required this.page,
      required this.scrollOffset,
      required this.type,
      this.note,
      this.highlightedText,
      this.color,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['document_id'] = Variable<String>(documentId);
    map['page'] = Variable<int>(page);
    map['scroll_offset'] = Variable<double>(scrollOffset);
    map['type'] = Variable<String>(type);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    if (!nullToAbsent || highlightedText != null) {
      map['highlighted_text'] = Variable<String>(highlightedText);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  BookmarksCompanion toCompanion(bool nullToAbsent) {
    return BookmarksCompanion(
      id: Value(id),
      documentId: Value(documentId),
      page: Value(page),
      scrollOffset: Value(scrollOffset),
      type: Value(type),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      highlightedText: highlightedText == null && nullToAbsent
          ? const Value.absent()
          : Value(highlightedText),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
      createdAt: Value(createdAt),
    );
  }

  factory Bookmark.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Bookmark(
      id: serializer.fromJson<String>(json['id']),
      documentId: serializer.fromJson<String>(json['documentId']),
      page: serializer.fromJson<int>(json['page']),
      scrollOffset: serializer.fromJson<double>(json['scrollOffset']),
      type: serializer.fromJson<String>(json['type']),
      note: serializer.fromJson<String?>(json['note']),
      highlightedText: serializer.fromJson<String?>(json['highlightedText']),
      color: serializer.fromJson<String?>(json['color']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'documentId': serializer.toJson<String>(documentId),
      'page': serializer.toJson<int>(page),
      'scrollOffset': serializer.toJson<double>(scrollOffset),
      'type': serializer.toJson<String>(type),
      'note': serializer.toJson<String?>(note),
      'highlightedText': serializer.toJson<String?>(highlightedText),
      'color': serializer.toJson<String?>(color),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Bookmark copyWith(
          {String? id,
          String? documentId,
          int? page,
          double? scrollOffset,
          String? type,
          Value<String?> note = const Value.absent(),
          Value<String?> highlightedText = const Value.absent(),
          Value<String?> color = const Value.absent(),
          DateTime? createdAt}) =>
      Bookmark(
        id: id ?? this.id,
        documentId: documentId ?? this.documentId,
        page: page ?? this.page,
        scrollOffset: scrollOffset ?? this.scrollOffset,
        type: type ?? this.type,
        note: note.present ? note.value : this.note,
        highlightedText: highlightedText.present
            ? highlightedText.value
            : this.highlightedText,
        color: color.present ? color.value : this.color,
        createdAt: createdAt ?? this.createdAt,
      );
  Bookmark copyWithCompanion(BookmarksCompanion data) {
    return Bookmark(
      id: data.id.present ? data.id.value : this.id,
      documentId:
          data.documentId.present ? data.documentId.value : this.documentId,
      page: data.page.present ? data.page.value : this.page,
      scrollOffset: data.scrollOffset.present
          ? data.scrollOffset.value
          : this.scrollOffset,
      type: data.type.present ? data.type.value : this.type,
      note: data.note.present ? data.note.value : this.note,
      highlightedText: data.highlightedText.present
          ? data.highlightedText.value
          : this.highlightedText,
      color: data.color.present ? data.color.value : this.color,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Bookmark(')
          ..write('id: $id, ')
          ..write('documentId: $documentId, ')
          ..write('page: $page, ')
          ..write('scrollOffset: $scrollOffset, ')
          ..write('type: $type, ')
          ..write('note: $note, ')
          ..write('highlightedText: $highlightedText, ')
          ..write('color: $color, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, documentId, page, scrollOffset, type,
      note, highlightedText, color, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Bookmark &&
          other.id == this.id &&
          other.documentId == this.documentId &&
          other.page == this.page &&
          other.scrollOffset == this.scrollOffset &&
          other.type == this.type &&
          other.note == this.note &&
          other.highlightedText == this.highlightedText &&
          other.color == this.color &&
          other.createdAt == this.createdAt);
}

class BookmarksCompanion extends UpdateCompanion<Bookmark> {
  final Value<String> id;
  final Value<String> documentId;
  final Value<int> page;
  final Value<double> scrollOffset;
  final Value<String> type;
  final Value<String?> note;
  final Value<String?> highlightedText;
  final Value<String?> color;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const BookmarksCompanion({
    this.id = const Value.absent(),
    this.documentId = const Value.absent(),
    this.page = const Value.absent(),
    this.scrollOffset = const Value.absent(),
    this.type = const Value.absent(),
    this.note = const Value.absent(),
    this.highlightedText = const Value.absent(),
    this.color = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BookmarksCompanion.insert({
    required String id,
    required String documentId,
    required int page,
    required double scrollOffset,
    required String type,
    this.note = const Value.absent(),
    this.highlightedText = const Value.absent(),
    this.color = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        documentId = Value(documentId),
        page = Value(page),
        scrollOffset = Value(scrollOffset),
        type = Value(type),
        createdAt = Value(createdAt);
  static Insertable<Bookmark> custom({
    Expression<String>? id,
    Expression<String>? documentId,
    Expression<int>? page,
    Expression<double>? scrollOffset,
    Expression<String>? type,
    Expression<String>? note,
    Expression<String>? highlightedText,
    Expression<String>? color,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (documentId != null) 'document_id': documentId,
      if (page != null) 'page': page,
      if (scrollOffset != null) 'scroll_offset': scrollOffset,
      if (type != null) 'type': type,
      if (note != null) 'note': note,
      if (highlightedText != null) 'highlighted_text': highlightedText,
      if (color != null) 'color': color,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BookmarksCompanion copyWith(
      {Value<String>? id,
      Value<String>? documentId,
      Value<int>? page,
      Value<double>? scrollOffset,
      Value<String>? type,
      Value<String?>? note,
      Value<String?>? highlightedText,
      Value<String?>? color,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return BookmarksCompanion(
      id: id ?? this.id,
      documentId: documentId ?? this.documentId,
      page: page ?? this.page,
      scrollOffset: scrollOffset ?? this.scrollOffset,
      type: type ?? this.type,
      note: note ?? this.note,
      highlightedText: highlightedText ?? this.highlightedText,
      color: color ?? this.color,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (documentId.present) {
      map['document_id'] = Variable<String>(documentId.value);
    }
    if (page.present) {
      map['page'] = Variable<int>(page.value);
    }
    if (scrollOffset.present) {
      map['scroll_offset'] = Variable<double>(scrollOffset.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (highlightedText.present) {
      map['highlighted_text'] = Variable<String>(highlightedText.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookmarksCompanion(')
          ..write('id: $id, ')
          ..write('documentId: $documentId, ')
          ..write('page: $page, ')
          ..write('scrollOffset: $scrollOffset, ')
          ..write('type: $type, ')
          ..write('note: $note, ')
          ..write('highlightedText: $highlightedText, ')
          ..write('color: $color, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sortOrderMeta =
      const VerificationMeta('sortOrder');
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
      'sort_order', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns => [id, name, color, sortOrder];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('sort_order')) {
      context.handle(_sortOrderMeta,
          sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color'])!,
      sortOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sort_order'])!,
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final String id;
  final String name;
  final String color;
  final int sortOrder;
  const Category(
      {required this.id,
      required this.name,
      required this.color,
      required this.sortOrder});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['color'] = Variable<String>(color);
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      name: Value(name),
      color: Value(color),
      sortOrder: Value(sortOrder),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<String>(json['color']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<String>(color),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  Category copyWith(
          {String? id, String? name, String? color, int? sortOrder}) =>
      Category(
        id: id ?? this.id,
        name: name ?? this.name,
        color: color ?? this.color,
        sortOrder: sortOrder ?? this.sortOrder,
      );
  Category copyWithCompanion(CategoriesCompanion data) {
    return Category(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      color: data.color.present ? data.color.value : this.color,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, color, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.name == this.name &&
          other.color == this.color &&
          other.sortOrder == this.sortOrder);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> color;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.color = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CategoriesCompanion.insert({
    required String id,
    required String name,
    required String color,
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        color = Value(color);
  static Insertable<Category> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? color,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CategoriesCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? color,
      Value<int>? sortOrder,
      Value<int>? rowid}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ReadingSessionsTable extends ReadingSessions
    with TableInfo<$ReadingSessionsTable, ReadingSession> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReadingSessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _documentIdMeta =
      const VerificationMeta('documentId');
  @override
  late final GeneratedColumn<String> documentId = GeneratedColumn<String>(
      'document_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES documents (id)'));
  static const VerificationMeta _startTimeMeta =
      const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<DateTime> startTime = GeneratedColumn<DateTime>(
      'start_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endTimeMeta =
      const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<DateTime> endTime = GeneratedColumn<DateTime>(
      'end_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _pagesReadMeta =
      const VerificationMeta('pagesRead');
  @override
  late final GeneratedColumn<int> pagesRead = GeneratedColumn<int>(
      'pages_read', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns =>
      [id, documentId, startTime, endTime, pagesRead];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reading_sessions';
  @override
  VerificationContext validateIntegrity(Insertable<ReadingSession> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('document_id')) {
      context.handle(
          _documentIdMeta,
          documentId.isAcceptableOrUnknown(
              data['document_id']!, _documentIdMeta));
    } else if (isInserting) {
      context.missing(_documentIdMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    }
    if (data.containsKey('pages_read')) {
      context.handle(_pagesReadMeta,
          pagesRead.isAcceptableOrUnknown(data['pages_read']!, _pagesReadMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReadingSession map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReadingSession(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      documentId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}document_id'])!,
      startTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_time'])!,
      endTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_time']),
      pagesRead: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pages_read'])!,
    );
  }

  @override
  $ReadingSessionsTable createAlias(String alias) {
    return $ReadingSessionsTable(attachedDatabase, alias);
  }
}

class ReadingSession extends DataClass implements Insertable<ReadingSession> {
  final String id;
  final String documentId;
  final DateTime startTime;
  final DateTime? endTime;
  final int pagesRead;
  const ReadingSession(
      {required this.id,
      required this.documentId,
      required this.startTime,
      this.endTime,
      required this.pagesRead});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['document_id'] = Variable<String>(documentId);
    map['start_time'] = Variable<DateTime>(startTime);
    if (!nullToAbsent || endTime != null) {
      map['end_time'] = Variable<DateTime>(endTime);
    }
    map['pages_read'] = Variable<int>(pagesRead);
    return map;
  }

  ReadingSessionsCompanion toCompanion(bool nullToAbsent) {
    return ReadingSessionsCompanion(
      id: Value(id),
      documentId: Value(documentId),
      startTime: Value(startTime),
      endTime: endTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endTime),
      pagesRead: Value(pagesRead),
    );
  }

  factory ReadingSession.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReadingSession(
      id: serializer.fromJson<String>(json['id']),
      documentId: serializer.fromJson<String>(json['documentId']),
      startTime: serializer.fromJson<DateTime>(json['startTime']),
      endTime: serializer.fromJson<DateTime?>(json['endTime']),
      pagesRead: serializer.fromJson<int>(json['pagesRead']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'documentId': serializer.toJson<String>(documentId),
      'startTime': serializer.toJson<DateTime>(startTime),
      'endTime': serializer.toJson<DateTime?>(endTime),
      'pagesRead': serializer.toJson<int>(pagesRead),
    };
  }

  ReadingSession copyWith(
          {String? id,
          String? documentId,
          DateTime? startTime,
          Value<DateTime?> endTime = const Value.absent(),
          int? pagesRead}) =>
      ReadingSession(
        id: id ?? this.id,
        documentId: documentId ?? this.documentId,
        startTime: startTime ?? this.startTime,
        endTime: endTime.present ? endTime.value : this.endTime,
        pagesRead: pagesRead ?? this.pagesRead,
      );
  ReadingSession copyWithCompanion(ReadingSessionsCompanion data) {
    return ReadingSession(
      id: data.id.present ? data.id.value : this.id,
      documentId:
          data.documentId.present ? data.documentId.value : this.documentId,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      endTime: data.endTime.present ? data.endTime.value : this.endTime,
      pagesRead: data.pagesRead.present ? data.pagesRead.value : this.pagesRead,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReadingSession(')
          ..write('id: $id, ')
          ..write('documentId: $documentId, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('pagesRead: $pagesRead')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, documentId, startTime, endTime, pagesRead);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReadingSession &&
          other.id == this.id &&
          other.documentId == this.documentId &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.pagesRead == this.pagesRead);
}

class ReadingSessionsCompanion extends UpdateCompanion<ReadingSession> {
  final Value<String> id;
  final Value<String> documentId;
  final Value<DateTime> startTime;
  final Value<DateTime?> endTime;
  final Value<int> pagesRead;
  final Value<int> rowid;
  const ReadingSessionsCompanion({
    this.id = const Value.absent(),
    this.documentId = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.pagesRead = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ReadingSessionsCompanion.insert({
    required String id,
    required String documentId,
    required DateTime startTime,
    this.endTime = const Value.absent(),
    this.pagesRead = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        documentId = Value(documentId),
        startTime = Value(startTime);
  static Insertable<ReadingSession> custom({
    Expression<String>? id,
    Expression<String>? documentId,
    Expression<DateTime>? startTime,
    Expression<DateTime>? endTime,
    Expression<int>? pagesRead,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (documentId != null) 'document_id': documentId,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (pagesRead != null) 'pages_read': pagesRead,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ReadingSessionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? documentId,
      Value<DateTime>? startTime,
      Value<DateTime?>? endTime,
      Value<int>? pagesRead,
      Value<int>? rowid}) {
    return ReadingSessionsCompanion(
      id: id ?? this.id,
      documentId: documentId ?? this.documentId,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      pagesRead: pagesRead ?? this.pagesRead,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (documentId.present) {
      map['document_id'] = Variable<String>(documentId.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<DateTime>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<DateTime>(endTime.value);
    }
    if (pagesRead.present) {
      map['pages_read'] = Variable<int>(pagesRead.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReadingSessionsCompanion(')
          ..write('id: $id, ')
          ..write('documentId: $documentId, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('pagesRead: $pagesRead, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $DocumentsTable documents = $DocumentsTable(this);
  late final $BookmarksTable bookmarks = $BookmarksTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $ReadingSessionsTable readingSessions =
      $ReadingSessionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [documents, bookmarks, categories, readingSessions];
}

typedef $$DocumentsTableCreateCompanionBuilder = DocumentsCompanion Function({
  required String id,
  required String path,
  required String title,
  Value<String?> author,
  Value<String?> coverPath,
  required String format,
  required String detectedType,
  required String preferredMode,
  required int totalPages,
  Value<int> lastPage,
  Value<double> lastScrollOffset,
  Value<double> lastZoom,
  required DateTime addedAt,
  Value<DateTime?> lastOpenedAt,
  required int fileSizeBytes,
  Value<bool> isFavorite,
  Value<String> tags,
  Value<String?> categoryId,
  Value<int> totalReadingSeconds,
  Value<double> readingProgress,
  Value<int> rowid,
});
typedef $$DocumentsTableUpdateCompanionBuilder = DocumentsCompanion Function({
  Value<String> id,
  Value<String> path,
  Value<String> title,
  Value<String?> author,
  Value<String?> coverPath,
  Value<String> format,
  Value<String> detectedType,
  Value<String> preferredMode,
  Value<int> totalPages,
  Value<int> lastPage,
  Value<double> lastScrollOffset,
  Value<double> lastZoom,
  Value<DateTime> addedAt,
  Value<DateTime?> lastOpenedAt,
  Value<int> fileSizeBytes,
  Value<bool> isFavorite,
  Value<String> tags,
  Value<String?> categoryId,
  Value<int> totalReadingSeconds,
  Value<double> readingProgress,
  Value<int> rowid,
});

final class $$DocumentsTableReferences
    extends BaseReferences<_$AppDatabase, $DocumentsTable, Document> {
  $$DocumentsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$BookmarksTable, List<Bookmark>>
      _bookmarksRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.bookmarks,
          aliasName:
              $_aliasNameGenerator(db.documents.id, db.bookmarks.documentId));

  $$BookmarksTableProcessedTableManager get bookmarksRefs {
    final manager = $$BookmarksTableTableManager($_db, $_db.bookmarks)
        .filter((f) => f.documentId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_bookmarksRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ReadingSessionsTable, List<ReadingSession>>
      _readingSessionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.readingSessions,
              aliasName: $_aliasNameGenerator(
                  db.documents.id, db.readingSessions.documentId));

  $$ReadingSessionsTableProcessedTableManager get readingSessionsRefs {
    final manager = $$ReadingSessionsTableTableManager(
            $_db, $_db.readingSessions)
        .filter((f) => f.documentId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_readingSessionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DocumentsTableFilterComposer
    extends Composer<_$AppDatabase, $DocumentsTable> {
  $$DocumentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get path => $composableBuilder(
      column: $table.path, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get coverPath => $composableBuilder(
      column: $table.coverPath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get format => $composableBuilder(
      column: $table.format, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get detectedType => $composableBuilder(
      column: $table.detectedType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get preferredMode => $composableBuilder(
      column: $table.preferredMode, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalPages => $composableBuilder(
      column: $table.totalPages, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get lastPage => $composableBuilder(
      column: $table.lastPage, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get lastScrollOffset => $composableBuilder(
      column: $table.lastScrollOffset,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get lastZoom => $composableBuilder(
      column: $table.lastZoom, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get addedAt => $composableBuilder(
      column: $table.addedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastOpenedAt => $composableBuilder(
      column: $table.lastOpenedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get fileSizeBytes => $composableBuilder(
      column: $table.fileSizeBytes, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isFavorite => $composableBuilder(
      column: $table.isFavorite, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tags => $composableBuilder(
      column: $table.tags, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalReadingSeconds => $composableBuilder(
      column: $table.totalReadingSeconds,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get readingProgress => $composableBuilder(
      column: $table.readingProgress,
      builder: (column) => ColumnFilters(column));

  Expression<bool> bookmarksRefs(
      Expression<bool> Function($$BookmarksTableFilterComposer f) f) {
    final $$BookmarksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.bookmarks,
        getReferencedColumn: (t) => t.documentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BookmarksTableFilterComposer(
              $db: $db,
              $table: $db.bookmarks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> readingSessionsRefs(
      Expression<bool> Function($$ReadingSessionsTableFilterComposer f) f) {
    final $$ReadingSessionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.readingSessions,
        getReferencedColumn: (t) => t.documentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ReadingSessionsTableFilterComposer(
              $db: $db,
              $table: $db.readingSessions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DocumentsTableOrderingComposer
    extends Composer<_$AppDatabase, $DocumentsTable> {
  $$DocumentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get path => $composableBuilder(
      column: $table.path, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get author => $composableBuilder(
      column: $table.author, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get coverPath => $composableBuilder(
      column: $table.coverPath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get format => $composableBuilder(
      column: $table.format, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get detectedType => $composableBuilder(
      column: $table.detectedType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get preferredMode => $composableBuilder(
      column: $table.preferredMode,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalPages => $composableBuilder(
      column: $table.totalPages, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get lastPage => $composableBuilder(
      column: $table.lastPage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get lastScrollOffset => $composableBuilder(
      column: $table.lastScrollOffset,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get lastZoom => $composableBuilder(
      column: $table.lastZoom, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get addedAt => $composableBuilder(
      column: $table.addedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastOpenedAt => $composableBuilder(
      column: $table.lastOpenedAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get fileSizeBytes => $composableBuilder(
      column: $table.fileSizeBytes,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isFavorite => $composableBuilder(
      column: $table.isFavorite, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tags => $composableBuilder(
      column: $table.tags, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalReadingSeconds => $composableBuilder(
      column: $table.totalReadingSeconds,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get readingProgress => $composableBuilder(
      column: $table.readingProgress,
      builder: (column) => ColumnOrderings(column));
}

class $$DocumentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $DocumentsTable> {
  $$DocumentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get path =>
      $composableBuilder(column: $table.path, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get author =>
      $composableBuilder(column: $table.author, builder: (column) => column);

  GeneratedColumn<String> get coverPath =>
      $composableBuilder(column: $table.coverPath, builder: (column) => column);

  GeneratedColumn<String> get format =>
      $composableBuilder(column: $table.format, builder: (column) => column);

  GeneratedColumn<String> get detectedType => $composableBuilder(
      column: $table.detectedType, builder: (column) => column);

  GeneratedColumn<String> get preferredMode => $composableBuilder(
      column: $table.preferredMode, builder: (column) => column);

  GeneratedColumn<int> get totalPages => $composableBuilder(
      column: $table.totalPages, builder: (column) => column);

  GeneratedColumn<int> get lastPage =>
      $composableBuilder(column: $table.lastPage, builder: (column) => column);

  GeneratedColumn<double> get lastScrollOffset => $composableBuilder(
      column: $table.lastScrollOffset, builder: (column) => column);

  GeneratedColumn<double> get lastZoom =>
      $composableBuilder(column: $table.lastZoom, builder: (column) => column);

  GeneratedColumn<DateTime> get addedAt =>
      $composableBuilder(column: $table.addedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get lastOpenedAt => $composableBuilder(
      column: $table.lastOpenedAt, builder: (column) => column);

  GeneratedColumn<int> get fileSizeBytes => $composableBuilder(
      column: $table.fileSizeBytes, builder: (column) => column);

  GeneratedColumn<bool> get isFavorite => $composableBuilder(
      column: $table.isFavorite, builder: (column) => column);

  GeneratedColumn<String> get tags =>
      $composableBuilder(column: $table.tags, builder: (column) => column);

  GeneratedColumn<String> get categoryId => $composableBuilder(
      column: $table.categoryId, builder: (column) => column);

  GeneratedColumn<int> get totalReadingSeconds => $composableBuilder(
      column: $table.totalReadingSeconds, builder: (column) => column);

  GeneratedColumn<double> get readingProgress => $composableBuilder(
      column: $table.readingProgress, builder: (column) => column);

  Expression<T> bookmarksRefs<T extends Object>(
      Expression<T> Function($$BookmarksTableAnnotationComposer a) f) {
    final $$BookmarksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.bookmarks,
        getReferencedColumn: (t) => t.documentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$BookmarksTableAnnotationComposer(
              $db: $db,
              $table: $db.bookmarks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> readingSessionsRefs<T extends Object>(
      Expression<T> Function($$ReadingSessionsTableAnnotationComposer a) f) {
    final $$ReadingSessionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.readingSessions,
        getReferencedColumn: (t) => t.documentId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ReadingSessionsTableAnnotationComposer(
              $db: $db,
              $table: $db.readingSessions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DocumentsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DocumentsTable,
    Document,
    $$DocumentsTableFilterComposer,
    $$DocumentsTableOrderingComposer,
    $$DocumentsTableAnnotationComposer,
    $$DocumentsTableCreateCompanionBuilder,
    $$DocumentsTableUpdateCompanionBuilder,
    (Document, $$DocumentsTableReferences),
    Document,
    PrefetchHooks Function({bool bookmarksRefs, bool readingSessionsRefs})> {
  $$DocumentsTableTableManager(_$AppDatabase db, $DocumentsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DocumentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DocumentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DocumentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> path = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> author = const Value.absent(),
            Value<String?> coverPath = const Value.absent(),
            Value<String> format = const Value.absent(),
            Value<String> detectedType = const Value.absent(),
            Value<String> preferredMode = const Value.absent(),
            Value<int> totalPages = const Value.absent(),
            Value<int> lastPage = const Value.absent(),
            Value<double> lastScrollOffset = const Value.absent(),
            Value<double> lastZoom = const Value.absent(),
            Value<DateTime> addedAt = const Value.absent(),
            Value<DateTime?> lastOpenedAt = const Value.absent(),
            Value<int> fileSizeBytes = const Value.absent(),
            Value<bool> isFavorite = const Value.absent(),
            Value<String> tags = const Value.absent(),
            Value<String?> categoryId = const Value.absent(),
            Value<int> totalReadingSeconds = const Value.absent(),
            Value<double> readingProgress = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DocumentsCompanion(
            id: id,
            path: path,
            title: title,
            author: author,
            coverPath: coverPath,
            format: format,
            detectedType: detectedType,
            preferredMode: preferredMode,
            totalPages: totalPages,
            lastPage: lastPage,
            lastScrollOffset: lastScrollOffset,
            lastZoom: lastZoom,
            addedAt: addedAt,
            lastOpenedAt: lastOpenedAt,
            fileSizeBytes: fileSizeBytes,
            isFavorite: isFavorite,
            tags: tags,
            categoryId: categoryId,
            totalReadingSeconds: totalReadingSeconds,
            readingProgress: readingProgress,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String path,
            required String title,
            Value<String?> author = const Value.absent(),
            Value<String?> coverPath = const Value.absent(),
            required String format,
            required String detectedType,
            required String preferredMode,
            required int totalPages,
            Value<int> lastPage = const Value.absent(),
            Value<double> lastScrollOffset = const Value.absent(),
            Value<double> lastZoom = const Value.absent(),
            required DateTime addedAt,
            Value<DateTime?> lastOpenedAt = const Value.absent(),
            required int fileSizeBytes,
            Value<bool> isFavorite = const Value.absent(),
            Value<String> tags = const Value.absent(),
            Value<String?> categoryId = const Value.absent(),
            Value<int> totalReadingSeconds = const Value.absent(),
            Value<double> readingProgress = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DocumentsCompanion.insert(
            id: id,
            path: path,
            title: title,
            author: author,
            coverPath: coverPath,
            format: format,
            detectedType: detectedType,
            preferredMode: preferredMode,
            totalPages: totalPages,
            lastPage: lastPage,
            lastScrollOffset: lastScrollOffset,
            lastZoom: lastZoom,
            addedAt: addedAt,
            lastOpenedAt: lastOpenedAt,
            fileSizeBytes: fileSizeBytes,
            isFavorite: isFavorite,
            tags: tags,
            categoryId: categoryId,
            totalReadingSeconds: totalReadingSeconds,
            readingProgress: readingProgress,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DocumentsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {bookmarksRefs = false, readingSessionsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (bookmarksRefs) db.bookmarks,
                if (readingSessionsRefs) db.readingSessions
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (bookmarksRefs)
                    await $_getPrefetchedData<Document, $DocumentsTable,
                            Bookmark>(
                        currentTable: table,
                        referencedTable:
                            $$DocumentsTableReferences._bookmarksRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DocumentsTableReferences(db, table, p0)
                                .bookmarksRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.documentId == item.id),
                        typedResults: items),
                  if (readingSessionsRefs)
                    await $_getPrefetchedData<Document, $DocumentsTable,
                            ReadingSession>(
                        currentTable: table,
                        referencedTable: $$DocumentsTableReferences
                            ._readingSessionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DocumentsTableReferences(db, table, p0)
                                .readingSessionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.documentId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DocumentsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DocumentsTable,
    Document,
    $$DocumentsTableFilterComposer,
    $$DocumentsTableOrderingComposer,
    $$DocumentsTableAnnotationComposer,
    $$DocumentsTableCreateCompanionBuilder,
    $$DocumentsTableUpdateCompanionBuilder,
    (Document, $$DocumentsTableReferences),
    Document,
    PrefetchHooks Function({bool bookmarksRefs, bool readingSessionsRefs})>;
typedef $$BookmarksTableCreateCompanionBuilder = BookmarksCompanion Function({
  required String id,
  required String documentId,
  required int page,
  required double scrollOffset,
  required String type,
  Value<String?> note,
  Value<String?> highlightedText,
  Value<String?> color,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$BookmarksTableUpdateCompanionBuilder = BookmarksCompanion Function({
  Value<String> id,
  Value<String> documentId,
  Value<int> page,
  Value<double> scrollOffset,
  Value<String> type,
  Value<String?> note,
  Value<String?> highlightedText,
  Value<String?> color,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$BookmarksTableReferences
    extends BaseReferences<_$AppDatabase, $BookmarksTable, Bookmark> {
  $$BookmarksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DocumentsTable _documentIdTable(_$AppDatabase db) =>
      db.documents.createAlias(
          $_aliasNameGenerator(db.bookmarks.documentId, db.documents.id));

  $$DocumentsTableProcessedTableManager get documentId {
    final $_column = $_itemColumn<String>('document_id')!;

    final manager = $$DocumentsTableTableManager($_db, $_db.documents)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_documentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$BookmarksTableFilterComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get page => $composableBuilder(
      column: $table.page, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get scrollOffset => $composableBuilder(
      column: $table.scrollOffset, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get highlightedText => $composableBuilder(
      column: $table.highlightedText,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$DocumentsTableFilterComposer get documentId {
    final $$DocumentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.documentId,
        referencedTable: $db.documents,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DocumentsTableFilterComposer(
              $db: $db,
              $table: $db.documents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BookmarksTableOrderingComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get page => $composableBuilder(
      column: $table.page, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get scrollOffset => $composableBuilder(
      column: $table.scrollOffset,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get note => $composableBuilder(
      column: $table.note, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get highlightedText => $composableBuilder(
      column: $table.highlightedText,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$DocumentsTableOrderingComposer get documentId {
    final $$DocumentsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.documentId,
        referencedTable: $db.documents,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DocumentsTableOrderingComposer(
              $db: $db,
              $table: $db.documents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BookmarksTableAnnotationComposer
    extends Composer<_$AppDatabase, $BookmarksTable> {
  $$BookmarksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get page =>
      $composableBuilder(column: $table.page, builder: (column) => column);

  GeneratedColumn<double> get scrollOffset => $composableBuilder(
      column: $table.scrollOffset, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<String> get highlightedText => $composableBuilder(
      column: $table.highlightedText, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$DocumentsTableAnnotationComposer get documentId {
    final $$DocumentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.documentId,
        referencedTable: $db.documents,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DocumentsTableAnnotationComposer(
              $db: $db,
              $table: $db.documents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$BookmarksTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BookmarksTable,
    Bookmark,
    $$BookmarksTableFilterComposer,
    $$BookmarksTableOrderingComposer,
    $$BookmarksTableAnnotationComposer,
    $$BookmarksTableCreateCompanionBuilder,
    $$BookmarksTableUpdateCompanionBuilder,
    (Bookmark, $$BookmarksTableReferences),
    Bookmark,
    PrefetchHooks Function({bool documentId})> {
  $$BookmarksTableTableManager(_$AppDatabase db, $BookmarksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BookmarksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BookmarksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BookmarksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> documentId = const Value.absent(),
            Value<int> page = const Value.absent(),
            Value<double> scrollOffset = const Value.absent(),
            Value<String> type = const Value.absent(),
            Value<String?> note = const Value.absent(),
            Value<String?> highlightedText = const Value.absent(),
            Value<String?> color = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BookmarksCompanion(
            id: id,
            documentId: documentId,
            page: page,
            scrollOffset: scrollOffset,
            type: type,
            note: note,
            highlightedText: highlightedText,
            color: color,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String documentId,
            required int page,
            required double scrollOffset,
            required String type,
            Value<String?> note = const Value.absent(),
            Value<String?> highlightedText = const Value.absent(),
            Value<String?> color = const Value.absent(),
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              BookmarksCompanion.insert(
            id: id,
            documentId: documentId,
            page: page,
            scrollOffset: scrollOffset,
            type: type,
            note: note,
            highlightedText: highlightedText,
            color: color,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$BookmarksTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({documentId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (documentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.documentId,
                    referencedTable:
                        $$BookmarksTableReferences._documentIdTable(db),
                    referencedColumn:
                        $$BookmarksTableReferences._documentIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$BookmarksTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BookmarksTable,
    Bookmark,
    $$BookmarksTableFilterComposer,
    $$BookmarksTableOrderingComposer,
    $$BookmarksTableAnnotationComposer,
    $$BookmarksTableCreateCompanionBuilder,
    $$BookmarksTableUpdateCompanionBuilder,
    (Bookmark, $$BookmarksTableReferences),
    Bookmark,
    PrefetchHooks Function({bool documentId})>;
typedef $$CategoriesTableCreateCompanionBuilder = CategoriesCompanion Function({
  required String id,
  required String name,
  required String color,
  Value<int> sortOrder,
  Value<int> rowid,
});
typedef $$CategoriesTableUpdateCompanionBuilder = CategoriesCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> color,
  Value<int> sortOrder,
  Value<int> rowid,
});

class $$CategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sortOrder => $composableBuilder(
      column: $table.sortOrder, builder: (column) => ColumnFilters(column));
}

class $$CategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sortOrder => $composableBuilder(
      column: $table.sortOrder, builder: (column) => ColumnOrderings(column));
}

class $$CategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);
}

class $$CategoriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CategoriesTable,
    Category,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (Category, BaseReferences<_$AppDatabase, $CategoriesTable, Category>),
    Category,
    PrefetchHooks Function()> {
  $$CategoriesTableTableManager(_$AppDatabase db, $CategoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<int> sortOrder = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CategoriesCompanion(
            id: id,
            name: name,
            color: color,
            sortOrder: sortOrder,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required String color,
            Value<int> sortOrder = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CategoriesCompanion.insert(
            id: id,
            name: name,
            color: color,
            sortOrder: sortOrder,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CategoriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CategoriesTable,
    Category,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (Category, BaseReferences<_$AppDatabase, $CategoriesTable, Category>),
    Category,
    PrefetchHooks Function()>;
typedef $$ReadingSessionsTableCreateCompanionBuilder = ReadingSessionsCompanion
    Function({
  required String id,
  required String documentId,
  required DateTime startTime,
  Value<DateTime?> endTime,
  Value<int> pagesRead,
  Value<int> rowid,
});
typedef $$ReadingSessionsTableUpdateCompanionBuilder = ReadingSessionsCompanion
    Function({
  Value<String> id,
  Value<String> documentId,
  Value<DateTime> startTime,
  Value<DateTime?> endTime,
  Value<int> pagesRead,
  Value<int> rowid,
});

final class $$ReadingSessionsTableReferences extends BaseReferences<
    _$AppDatabase, $ReadingSessionsTable, ReadingSession> {
  $$ReadingSessionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $DocumentsTable _documentIdTable(_$AppDatabase db) =>
      db.documents.createAlias(
          $_aliasNameGenerator(db.readingSessions.documentId, db.documents.id));

  $$DocumentsTableProcessedTableManager get documentId {
    final $_column = $_itemColumn<String>('document_id')!;

    final manager = $$DocumentsTableTableManager($_db, $_db.documents)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_documentIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ReadingSessionsTableFilterComposer
    extends Composer<_$AppDatabase, $ReadingSessionsTable> {
  $$ReadingSessionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endTime => $composableBuilder(
      column: $table.endTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get pagesRead => $composableBuilder(
      column: $table.pagesRead, builder: (column) => ColumnFilters(column));

  $$DocumentsTableFilterComposer get documentId {
    final $$DocumentsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.documentId,
        referencedTable: $db.documents,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DocumentsTableFilterComposer(
              $db: $db,
              $table: $db.documents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ReadingSessionsTableOrderingComposer
    extends Composer<_$AppDatabase, $ReadingSessionsTable> {
  $$ReadingSessionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startTime => $composableBuilder(
      column: $table.startTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endTime => $composableBuilder(
      column: $table.endTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get pagesRead => $composableBuilder(
      column: $table.pagesRead, builder: (column) => ColumnOrderings(column));

  $$DocumentsTableOrderingComposer get documentId {
    final $$DocumentsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.documentId,
        referencedTable: $db.documents,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DocumentsTableOrderingComposer(
              $db: $db,
              $table: $db.documents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ReadingSessionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReadingSessionsTable> {
  $$ReadingSessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get startTime =>
      $composableBuilder(column: $table.startTime, builder: (column) => column);

  GeneratedColumn<DateTime> get endTime =>
      $composableBuilder(column: $table.endTime, builder: (column) => column);

  GeneratedColumn<int> get pagesRead =>
      $composableBuilder(column: $table.pagesRead, builder: (column) => column);

  $$DocumentsTableAnnotationComposer get documentId {
    final $$DocumentsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.documentId,
        referencedTable: $db.documents,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DocumentsTableAnnotationComposer(
              $db: $db,
              $table: $db.documents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ReadingSessionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ReadingSessionsTable,
    ReadingSession,
    $$ReadingSessionsTableFilterComposer,
    $$ReadingSessionsTableOrderingComposer,
    $$ReadingSessionsTableAnnotationComposer,
    $$ReadingSessionsTableCreateCompanionBuilder,
    $$ReadingSessionsTableUpdateCompanionBuilder,
    (ReadingSession, $$ReadingSessionsTableReferences),
    ReadingSession,
    PrefetchHooks Function({bool documentId})> {
  $$ReadingSessionsTableTableManager(
      _$AppDatabase db, $ReadingSessionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReadingSessionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReadingSessionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReadingSessionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> documentId = const Value.absent(),
            Value<DateTime> startTime = const Value.absent(),
            Value<DateTime?> endTime = const Value.absent(),
            Value<int> pagesRead = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ReadingSessionsCompanion(
            id: id,
            documentId: documentId,
            startTime: startTime,
            endTime: endTime,
            pagesRead: pagesRead,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String documentId,
            required DateTime startTime,
            Value<DateTime?> endTime = const Value.absent(),
            Value<int> pagesRead = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ReadingSessionsCompanion.insert(
            id: id,
            documentId: documentId,
            startTime: startTime,
            endTime: endTime,
            pagesRead: pagesRead,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ReadingSessionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({documentId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (documentId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.documentId,
                    referencedTable:
                        $$ReadingSessionsTableReferences._documentIdTable(db),
                    referencedColumn: $$ReadingSessionsTableReferences
                        ._documentIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ReadingSessionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ReadingSessionsTable,
    ReadingSession,
    $$ReadingSessionsTableFilterComposer,
    $$ReadingSessionsTableOrderingComposer,
    $$ReadingSessionsTableAnnotationComposer,
    $$ReadingSessionsTableCreateCompanionBuilder,
    $$ReadingSessionsTableUpdateCompanionBuilder,
    (ReadingSession, $$ReadingSessionsTableReferences),
    ReadingSession,
    PrefetchHooks Function({bool documentId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$DocumentsTableTableManager get documents =>
      $$DocumentsTableTableManager(_db, _db.documents);
  $$BookmarksTableTableManager get bookmarks =>
      $$BookmarksTableTableManager(_db, _db.bookmarks);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
  $$ReadingSessionsTableTableManager get readingSessions =>
      $$ReadingSessionsTableTableManager(_db, _db.readingSessions);
}
