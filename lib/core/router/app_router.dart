import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../presentation/library/library_screen.dart';
import '../../presentation/reader/reader_screen.dart';
import '../../presentation/stats/stats_screen.dart';
import '../../presentation/settings/settings_screen.dart';
import '../../domain/entities/document.dart' as domain;

class AppShell extends StatelessWidget {
  final Widget child;
  const AppShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.library_books), label: 'Biblioteca'),
          NavigationDestination(icon: Icon(Icons.bar_chart), label: 'Stats'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Ajustes'),
        ],
      ),
    );
  }
}

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/library',
    routes: [
      ShellRoute(
        builder: (ctx, state, child) => AppShell(child: child),
        routes: [
          GoRoute(
            path: '/library',
            builder: (ctx, state) => const LibraryScreen(),
          ),
          GoRoute(
            path: '/stats',
            builder: (ctx, state) => const StatsScreen(),
          ),
          GoRoute(
            path: '/settings',
            builder: (ctx, state) => const SettingsScreen(),
          ),
          GoRoute(
            path: '/reader',
            builder: (ctx, state) {
              final doc = state.extra as domain.Document;
              return ReaderScreen(document: doc);
            },
          ),
        ],
      ),
    ],
  );
});
