import 'package:flutter/material.dart';
import '../../../domain/entities/document.dart';

class DocumentListTile extends StatelessWidget {
  final Document document;
  const DocumentListTile({super.key, required this.document});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.picture_as_pdf),
      title: Text(document.title),
      subtitle: Text(document.author ?? ''),
    );
  }
}
