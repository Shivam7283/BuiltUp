import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/services.dart';

class syllabussem5OR extends StatefulWidget {
  @override
  _syllabussem5ORState createState() => _syllabussem5ORState();
}

class _syllabussem5ORState extends State<syllabussem5OR> {
  bool _isLoading = true;
  late PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    document = await PDFDocument.fromURL(
        'https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem5%2FOperation%20Research%2Fsyllabus%2FOR.pdf?alt=media&token=bb9a245e-40ed-488b-8324-f2592a3854f0');

    setState(() => _isLoading = false);
  }

  changePDF(value) async {
    setState(() => _isLoading = true);

    document = await PDFDocument.fromURL(
      "https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem5%2FOperation%20Research%2Fsyllabus%2FOR.pdf?alt=media&token=bb9a245e-40ed-488b-8324-f2592a3854f0",
      /* cacheManager: CacheManager(
          Config(
            "customCacheKey",
            stalePeriod: const Duration(days: 2),
            maxNrOfCacheObjects: 10,
          ),
        ), */
    );

    setState(() => _isLoading = false);
    Navigator.pop(context);
  }

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
