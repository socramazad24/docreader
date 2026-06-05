import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'library_provider.dart';
import 'widgets/document_card.dart';
import 'widgets/document_list_tile.dart';

class LibraryScreen extends ConsumerStatefulWidget {
  const LibraryScreen({super.key});

  @override
  ConsumerState<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends ConsumerState<LibraryScreen> {
  bool _isGridView = true;
  final _searchCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final docs = ref.watch(filteredDocumentsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi biblioteca'),
        actions: [
          IconButton(
            icon: Icon(_isGridView ? Icons.list : Icons.grid_view),
            onPressed: () => setState(() => _isGridView = !_isGridView),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchCtrl,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Buscar...',
              ),
              onChanged: (q) => ref
                  .read(libraryFilterProvider.notifier)
                  .state = ref.read(libraryFilterProvider).copyWith(query: q),
            ),
          ),
          Expanded(
            child: docs.when(
              data: (list) => _isGridView
                  ? GridView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: list.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 0.62,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemBuilder: (ctx, i) => DocumentCard(document: list[i]),
                    )
                  : ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (ctx, i) =>
                          DocumentListTile(document: list[i]),
                    ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (e, _) => Center(child: Text('Error: $e')),
            ),
          ),
        ],
      ),
    );
  }
}
