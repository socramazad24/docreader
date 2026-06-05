import 'package:pdfrx/pdfrx.dart';
import '../../domain/entities/document.dart';

class ContentAnalyzer {
  static const double _imagePageThreshold = 0.6;
  static const int _samplePages = 10;

  Future<ContentAnalysisResult> analyzePdf(String path) async {
    final doc = await PdfDocument.openFile(path);
    final pageCount = doc.pages.length;
    final sampleCount = pageCount.clamp(1, _samplePages);

    int imageHeavyPages = 0;
    int totalTextChars = 0;

    for (int i = 0; i < sampleCount; i++) {
      final page = doc.pages[i];
      final text = await page.loadText();
      final charCount = text?.fullText.length ?? 0;
      totalTextChars += charCount;
      if (charCount < 100) imageHeavyPages++;
    }

    doc.dispose();

    final imageRatio = imageHeavyPages / sampleCount;
    final avgCharsPerPage = totalTextChars / sampleCount;

    final detectedType = _inferDocumentType(imageRatio, avgCharsPerPage, path);
    final preferredMode = imageRatio >= _imagePageThreshold
        ? ReadingMode.visual
        : ReadingMode.ebook;

    return ContentAnalysisResult(
      detectedType: detectedType,
      preferredMode: preferredMode,
      imagePageRatio: imageRatio,
      avgCharsPerPage: avgCharsPerPage,
    );
  }

  Future<ContentAnalysisResult> analyzeDocx(String path) async {
    return const ContentAnalysisResult(
      detectedType: DocumentType.book,
      preferredMode: ReadingMode.ebook,
      imagePageRatio: 0.0,
      avgCharsPerPage: 1000,
    );
  }

  DocumentType _inferDocumentType(
    double imageRatio,
    double avgChars,
    String path,
  ) {
    final fileName = path.toLowerCase();

    if (_containsAny(fileName, ['manga', 'manhwa', 'manhua'])) {
      if (fileName.contains('manhwa')) return DocumentType.manhwa;
      if (fileName.contains('manhua')) return DocumentType.manhua;
      return DocumentType.manga;
    }
    if (_containsAny(fileName, ['comic', 'cómic', 'cbz', 'cbr'])) {
      return DocumentType.comic;
    }

    if (imageRatio >= 0.8) return DocumentType.manga;
    if (imageRatio >= 0.5) return DocumentType.comic;
    if (avgChars > 1500) return DocumentType.novel;
    if (avgChars > 500) return DocumentType.book;
    if (avgChars > 200) return DocumentType.article;

    return DocumentType.mixed;
  }

  bool _containsAny(String text, List<String> keywords) =>
      keywords.any((k) => text.contains(k));
}

class ContentAnalysisResult {
  final DocumentType detectedType;
  final ReadingMode preferredMode;
  final double imagePageRatio;
  final double avgCharsPerPage;

  const ContentAnalysisResult({
    required this.detectedType,
    required this.preferredMode,
    required this.imagePageRatio,
    required this.avgCharsPerPage,
  });
}
