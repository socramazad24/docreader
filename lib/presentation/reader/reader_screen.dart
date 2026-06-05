import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';

import '../../domain/entities/document.dart';

class ReaderScreen extends StatefulWidget {
  final Document document;
  const ReaderScreen({super.key, required this.document});

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  late PdfViewerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PdfViewerController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.document.title)),
      body: PdfViewer.file(widget.document.path, controller: _controller),
    );
  }
}
