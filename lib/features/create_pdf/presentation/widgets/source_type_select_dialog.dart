import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SourceTypeSelectDialog extends StatelessWidget {
  const SourceTypeSelectDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Source'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          imageSource(context, Icons.camera, 'Camera', ImageSource.camera),
          const SizedBox(height: 4),
          imageSource(context, Icons.photo_library, 'Gallery', ImageSource.gallery),
        ],
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  Widget imageSource(BuildContext context, IconData iconData, String title, ImageSource source) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[100],
      ),
      child: ListTile(
        leading: Icon(iconData),
        title: Text(title),
        onTap: () {
          Navigator.of(context).pop(source);
        },
      ),
    );
  }
}
