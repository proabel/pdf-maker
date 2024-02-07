import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf_maker/features/create_pdf/domain/pdf_file.dart';
import 'package:pdf_maker/features/create_pdf/infrastructure/pdf_file_repository.dart';

part 'dashboard_notifier.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required List<PDFFile> pdfFiles,
    required List<PDFFile> filteredPDFFiles,
  }) = _DashboardState;
}

class DashboardNotifier extends StateNotifier<DashboardState> {
  final PDFFileRepository _pdfFileRepository;
  DashboardNotifier(this._pdfFileRepository) : super(const DashboardState(pdfFiles: [], filteredPDFFiles: [])) {
    getPDFFiles();
  }

  Future<void> getPDFFiles() async {
    final Either<Exception, List<PDFFile>> response = await _pdfFileRepository.getPDFFiles();
    response.fold(
      (l) => null,
      (r) => state = state.copyWith(pdfFiles: r, filteredPDFFiles: r),
    );
  }

  Future<void> filterPDFFiles(String query) async {
    final List<PDFFile> filteredPDFFiles = state.pdfFiles.where((pdfFile) => pdfFile.fileName.contains(query)).toList();
    state = state.copyWith(filteredPDFFiles: filteredPDFFiles);
  }
}
