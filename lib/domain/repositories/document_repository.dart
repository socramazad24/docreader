import '../entities/document.dart';

abstract class DocumentRepository {
  Stream<List<Document>> watchDocuments();
  Future<List<Document>> importFiles();
  Future<List<Document>> scanFolder();
  Future<void> updateProgress(
    String id, {
    required int lastPage,
    required double scrollOffset,
    required double zoom,
    required double progress,
  });
  Future<void> toggleFavorite(String id);
}
