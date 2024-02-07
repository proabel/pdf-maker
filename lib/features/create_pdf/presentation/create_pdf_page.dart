import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pdf_maker/features/core/presentation/colors.dart';
import 'package:pdf_maker/features/core/presentation/theme.dart';
import 'package:pdf_maker/features/core/shared/providers.dart';
import 'package:pdf_maker/features/create_pdf/application/create_pdf_notifier.dart';
import 'package:pdf_maker/features/create_pdf/presentation/widgets/source_type_select_dialog.dart';

@RoutePage()
class CreatePDFPage extends ConsumerStatefulWidget {
  const CreatePDFPage({super.key});

  @override
  ConsumerState<CreatePDFPage> createState() => _CreatePDFPageState();
}

class _CreatePDFPageState extends ConsumerState<CreatePDFPage> {
  final TextEditingController _pdfNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBGColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: primaryBGColor,
        title: const Text('CREATE PDF', style: pageTitleStyle,),
      ),
      body: Stack(
        children: [
          _buildThumbs(context),
          _buildPdfDetail(context),
        ],
      ),
    );
  }

  Widget _buildThumbs(BuildContext context) {
    final CreatePDFState docCreateState = ref.watch(createPDFNotifierProvider);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          ...docCreateState.tmpFilePaths?.map((filePath) => Container(
                    clipBehavior: Clip.hardEdge,
                    //margin: const EdgeInsets.all(4),
                    width: 100,
                    height: 100,
                    // color: Colors.grey,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey[300], boxShadow: []),
                    child: Image.file(
                      File(filePath),
                      fit: BoxFit.cover,
                    ),
                  )) ??
              [],
          GestureDetector(
            onTap: () async {
              final ImageSource sourceType = await showDialog(
                context: context,
                builder: (context) {
                  return const SourceTypeSelectDialog();
                },
              );

              XFile? photo;
              final picker = ImagePicker();
              if (sourceType == ImageSource.camera) {
                photo = await picker.pickImage(source: ImageSource.camera);
              } else if (sourceType == ImageSource.gallery) {
                photo = await picker.pickImage(source: ImageSource.gallery);
              } else {}

              if (photo != null) {
                final Uint8List bytes = await photo.readAsBytes();
                ref.read(createPDFNotifierProvider.notifier).addBytesToPdf(bytes: bytes);
              }
            },
            child: Container(
              width: 100,
              height: 100,
              // color: Colors.grey,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
                //border: Border.all(color: Colors.grey),
              ),
              child: const Center(
                child: Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPdfDetail(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(4),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _pdfNameController,
                    decoration: const InputDecoration(
                      isDense: true,
                      hintText: 'Enter PDF Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () async {
                    await ref.read(createPDFNotifierProvider.notifier).savePDF(fileName: _pdfNameController.text.trim());
                    ref.read(dashboardNotifierProvider.notifier).getPDFFiles();
                    if(context.mounted){
                      AutoRouter.of(context).pop();
                    }
                    
                  },
                  child: const Text('Save PDF'),
                )
              ],
            ),
          )),
    );
  }
}
