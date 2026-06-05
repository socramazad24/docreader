import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/database/app_database.dart';
import '../../data/repositories/document_repository_impl.dart';
import '../../data/sources/content_analyzer.dart';
import '../../domain/entities/document.dart' as domain;

final appDatabaseProvider = Provider<AppDatabase>((ref) => AppDatabase());
final contentAnalyzerProvider = Provider<ContentAnalyzer>((ref) => ContentAnalyzer());
final documentRepositoryProvider = Provider<DocumentRepositoryImpl>(
  (ref) => DocumentRepositoryImpl(
    ref.read(appDatabaseProvider),
    ref.read(contentAnalyzerProvider),
  ),
);

enum SortOrder { name, dateOpened, dateAdded, size, author }

class LibraryFilterState {
  final String query;
  final SortOrder sort;
  final domain.DocumentType? typeFilter;
  final bool favoritesOnly;

  const LibraryFilterState({
    this.query = '',
    this.sort = SortOrder.dateOpened,
    this.typeFilter,
    this.favoritesOnly = false,
  });

  LibraryFilterState copyWith({
    String? query,
    SortOrder? sort,
    domain.DocumentType? typeFilter,
    bool? favoritesOnly,
  }) =>
      LibraryFilterState(
        query: query ?? this.query,
        sort: sort ?? this.sort,
        typeFilter: typeFilter ?? this.typeFilter,
        favoritesOnly: favoritesOnly ?? this.favoritesOnly,
      );
}

final libraryFilterProvider = StateProvider<LibraryFilterState>((ref) =>
    const LibraryFilterState());

final filteredDocumentsProvider = StreamProvider<List<domain.Document>>((ref) {
  final repo = ref.watch(documentRepositoryProvider);
  final filter = ref.watch(libraryFilterProvider);

  return repo.watchDocuments().map((docs) {
    var result = docs;

    if (filter.query.isNotEmpty) {
      final q = filter.query.toLowerCase();
      result = result
          .where((d) =>
              d.title.toLowerCase().contains(q) ||
              (d.author?.toLowerCase().contains(q) ?? false))
          .toList();
    }

    if (filter.typeFilter != null) {
      result =
          result.where((d) => d.detectedType == filter.typeFilter).toList();
    }

    if (filter.favoritesOnly) {
      result = result.where((d) => d.isFavorite).toList();
    }

    result.sort((a, b) {
      switch (filter.sort) {
        case SortOrder.name:
          return a.title.compareTo(b.title);
        case SortOrder.dateOpened:
          return (b.lastOpenedAt ?? b.addedAt)
              .compareTo(a.lastOpenedAt ?? a.addedAt);
        case SortOrder.dateAdded:
          return b.addedAt.compareTo(a.addedAt);
        case SortOrder.size:
          return b.fileSizeBytes.compareTo(a.fileSizeBytes);
        case SortOrder.author:
          return (a.author ?? '').compareTo(b.author ?? '');
      }
    });

    return result;
  });
});