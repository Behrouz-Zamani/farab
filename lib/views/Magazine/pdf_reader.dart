import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfReaderFarab extends StatefulWidget {
  const PdfReaderFarab({super.key});

  @override
  State<PdfReaderFarab> createState() => _PdfReaderFarabState();
}

class _PdfReaderFarabState extends State<PdfReaderFarab> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SfPdfViewer.network(
                'https://www.farab.com/fa/wp-content/uploads/2023/08/farab-80.pdf',
              ),
      ),
    );
  }
}
