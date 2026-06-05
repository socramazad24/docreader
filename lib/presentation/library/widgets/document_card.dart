import 'package:flutter/material.dart';
import '../../../domain/entities/document.dart';

class DocumentCard extends StatelessWidget {
  final Document document;
  const DocumentCard({super.key, required this.document});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(color: Colors.grey[300], width: double.infinity),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              document.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
