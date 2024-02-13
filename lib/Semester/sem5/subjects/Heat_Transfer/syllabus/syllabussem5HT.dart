import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// class syllabussem5HT extends StatefulWidget {
//   @override
//   _syllabussem5HTState createState() => _syllabussem5HTState();
// }
//
// class _syllabussem5HTState extends State<syllabussem5HT> {
//   @override
//   void initState() {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.landscapeRight,
//       DeviceOrientation.landscapeLeft,
//     ]);
//     super.initState();
//   }
//
//   @override
//   dispose() {
//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.landscapeRight,
//       DeviceOrientation.landscapeLeft,
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('S2020'),
//       ),
//       //body: SfPdfViewer.asset('assets\\sem\\sem5\\HT\\Syllabus\\3151909.pdf'),
//       body: SfPdfViewer.asset('assets/sem/sem5/Syllabus/HT3151909.pdf'),
//     );
//   }
// }

class syllabussem5HT extends StatefulWidget {
  @override
  _syllabussem5HTState createState() => _syllabussem5HTState();
}

class _syllabussem5HTState extends State<syllabussem5HT> {
  bool _isLoading = true;
  late PDFDocument document;
  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromURL(
      'https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem5%2FHeat%20Transfer%2Fsyllabus%2FHTSyllabus.pdf?alt=media&token=f7d0200a-cadd-4fa4-8515-76f8f5959f8f',
    );

    setState(() => _isLoading = false);
  }

  // changePDF(value) async {
  //   setState(() => _isLoading = true);
  //
  //   document = await PDFDocument.fromURL(
  //     "https://drive.google.com/file/d/12rbYHPiUx68kleGq4WFvm4cfsnqyJtwW/view?usp=sharing",
  //     /* cacheManager: CacheManager(
  //         Config(
  //           "customCacheKey",
  //           stalePeriod: const Duration(days: 2),
  //           maxNrOfCacheObjects: 10,
  //         ),
  //       ), */
  //   );
  //
  //   setState(() => _isLoading = false);
  //   Navigator.pop(context);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syllabus'),
      ),
      body: Center(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: document,
                zoomSteps: 1,
                //uncomment below line to preload all pages
                // lazyLoad: false,
                // uncomment below line to scroll vertically
                // scrollDirection: Axis.vertical,

                //uncomment below code to replace bottom navigation with your own
                /* navigationBuilder:
                          (context, page, totalPages, jumpToPage, animateToPage) {
                        return ButtonBar(
                          alignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.first_page),
                              onPressed: () {
                                jumpToPage()(page: 0);
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: () {
                                animateToPage(page: page - 2);
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward),
                              onPressed: () {
                                animateToPage(page: page);
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.last_page),
                              onPressed: () {
                                jumpToPage(page: totalPages - 1);
                              },
                            ),
                          ],
                        );
                      }, */
              ),
      ),
    );
  }
}
