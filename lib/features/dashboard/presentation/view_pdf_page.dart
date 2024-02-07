import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pdf_maker/common/presentation/bottom_nav.dart';
import 'package:pdf_maker/features/core/presentation/colors.dart';
import 'package:pdf_maker/features/core/presentation/theme.dart';
import 'package:pdf_maker/features/create_pdf/domain/pdf_file.dart';
import 'package:share_plus/share_plus.dart';

@RoutePage()
class ViewPDFPage extends ConsumerStatefulWidget {
  final PDFFile pdfFile;
  const ViewPDFPage(this.pdfFile, {super.key});

  @override
  ConsumerState<ViewPDFPage> createState() => _ViewPDFPageState();
}

class _ViewPDFPageState extends ConsumerState<ViewPDFPage> {
  bool showExpanded = false;
  final Completer<PDFViewController> _controller = Completer<PDFViewController>();
  int? pages = 0;
  int? currentPage = 0;
  bool isReady = false;
  String errorMessage = '';
  // bool editMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryBGColor,
        appBar: AppBar(
          title: Text(widget.pdfFile.fileName, style: pageTitleStyle,),
          actions: [
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () async {
                final xfileToShare = XFile(widget.pdfFile.filePath);
                Share.shareXFiles([xfileToShare]);
              },
            ),
            //add edit
          ],
        ),
        bottomNavigationBar: const BottomNav(),
        body: _buildPDFViewer(context, ref));
  }

  Widget _buildPDFViewer(
    BuildContext context,
    WidgetRef ref,
  ) {
    //final DocViewerState docViewerState = ref.watch(docViewerNotifierProvider);

    return Container(
      color: primaryBGColor,
      //padding: EdgeInsets.all(8),
      child: PDFView(
        filePath: widget.pdfFile.filePath,
        enableSwipe: true,
        swipeHorizontal: false,
        autoSpacing: false,
        pageFling: false,
        onRender: (_pages) {
          // setState(() {
          //   pages = _pages;
          //   isReady = true;
          // });
        },
        onError: (error) {
          print(error.toString());
        },
        onPageError: (page, error) {
          print('$page: ${error.toString()}');
        },
        onViewCreated: (PDFViewController pdfViewController) {
          _controller.complete(pdfViewController);
        },
        onPageChanged: (int? page, int? total) {
          print('page change: $page/$total');
        },
      ),
    );
  }

 


}
