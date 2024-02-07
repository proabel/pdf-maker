import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf_maker/features/create_pdf/domain/pdf_file.dart';
import 'package:pdf_maker/features/create_pdf/infrastructure/file_repository.dart';
import 'package:pdf_maker/features/create_pdf/infrastructure/pdf_file_repository.dart';
import 'package:uuid/uuid.dart';

part 'create_pdf_notifier.freezed.dart';

@freezed
class CreatePDFState with _$CreatePDFState {
  const factory CreatePDFState({
    PDFFile? pdfFile,
    List<String>? tmpFilePaths,
  }) = _CreatePDFState;
}

class CreatePDFNotifier extends StateNotifier<CreatePDFState> {
  final FileRepository _fileRepository;
  final PDFFileRepository _pdfFileRepository;
  CreatePDFNotifier(this._fileRepository, this._pdfFileRepository) : super(const CreatePDFState());

  void setPDFFile(PDFFile pdfFile) {
    state = state.copyWith(pdfFile: pdfFile);
  }

  Future<void> addBytesToPdf({required Uint8List bytes}) async {
    final String fileName = '${const Uuid().v4()}.jpg';
    final Either<Exception, String> response = await _fileRepository.putFileInTempDir(bytes, fileName);
    response.fold(
      (l) => null,
      (r) => state = state.copyWith(tmpFilePaths: [...state.tmpFilePaths ?? [], r]),
    );
  }

  //saves the pdf bytes to file system
  Future<void> savePDF({required String fileName}) async {
    final Either<Exception, String> response = await _fileRepository.createPDFFromTempDir(
        filePaths: state.tmpFilePaths ?? [], fileName: fileName);
    return response.fold((l) => null, (filePath) async {
      savePdfDetails(pdfFile: PDFFile(
        fileName: fileName,
        filePath: filePath,
        createdAt: DateTime.now(),
      ));
      clearState();
      await _fileRepository.clearTempDir();
    });
  }

  //saves the pdf details in local storage
  Future<void> savePdfDetails({required PDFFile pdfFile}) async {
    final Either<Exception, Unit> response = await _pdfFileRepository.addPDFFile(pdfFile: pdfFile);
    return response.fold(
      (l) => null,
      (r) => null,
    );
  }

  Future<void> clearState() async {
    state = state.copyWith(
      pdfFile: null,
      tmpFilePaths: null,
    );
    return;
  }
}
