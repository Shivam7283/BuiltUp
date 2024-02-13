import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/services.dart';

class sem3CVPquepapers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question Papers"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              tileColor: Colors.grey,
              title: Text(
                "Winter 2019",
              ),
              leading: Icon(Icons.description),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => W2019(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            ListTile(
              tileColor: Colors.grey,
              title: Text(
                "Winter 2020",
              ),
              leading: Icon(Icons.description),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => W2020(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            ListTile(
              tileColor: Colors.grey,
              title: Text(
                "Summer 2020",
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.description,
                color: Colors.white,
              ),
              trailing: Icon(
                Icons.forward,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => S2020(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            ListTile(
              tileColor: Colors.grey,
              title: Text("Winter 2021"),
              leading: Icon(Icons.description),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => W2021(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            ListTile(
              tileColor: Colors.grey,
              title: Text("Summer 2022"),
              leading: Icon(Icons.description),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => W2021(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}

class W2019 extends StatefulWidget {
  @override
  _W2019State createState() => _W2019State();
}

class _W2019State extends State<W2019> {
  bool _isLoading = true;
  late PDFDocument document;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    super.initState();
    loadDocument();
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  loadDocument() async {
    document = await PDFDocument.fromURL(
        'https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem3%2FComplex%20Variables%20and%20Partial%20Differential%20Equations%2Fquestionpapers%2FW2019.pdf?alt=media&token=a265bd15-1413-4e66-83cc-ac365e1b39bc');

    setState(() => _isLoading = false);
  }

  changePDF(value) async {
    setState(() => _isLoading = true);

    document = await PDFDocument.fromURL(
      "https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem3%2FComplex%20Variables%20and%20Partial%20Differential%20Equations%2Fquestionpapers%2FW2019.pdf?alt=media&token=a265bd15-1413-4e66-83cc-ac365e1b39bc",
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

class W2020 extends StatefulWidget {
  @override
  _W2020State createState() => _W2020State();
}

class _W2020State extends State<W2020> {
  bool _isLoading = true;
  late PDFDocument document;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    super.initState();
    loadDocument();
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  loadDocument() async {
    document = await PDFDocument.fromURL(
        'https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem3%2FComplex%20Variables%20and%20Partial%20Differential%20Equations%2Fquestionpapers%2FW2020.pdf?alt=media&token=ad2b0bc5-b847-4184-abbf-c5fdd8db4c71');

    setState(() => _isLoading = false);
  }

  changePDF(value) async {
    setState(() => _isLoading = true);

    document = await PDFDocument.fromURL(
      "https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem3%2FComplex%20Variables%20and%20Partial%20Differential%20Equations%2Fquestionpapers%2FW2020.pdf?alt=media&token=ad2b0bc5-b847-4184-abbf-c5fdd8db4c71",
    );

    setState(() => _isLoading = false);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: document,
                zoomSteps: 1,
              ),
      ),
    );
  }
}

class S2020 extends StatefulWidget {
  @override
  _S2020State createState() => _S2020State();
}

class _S2020State extends State<S2020> {
  bool _isLoading = true;
  late PDFDocument document;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    super.initState();
    loadDocument();
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  loadDocument() async {
    document = await PDFDocument.fromURL(
        'https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem3%2FComplex%20Variables%20and%20Partial%20Differential%20Equations%2Fquestionpapers%2FS2020.pdf?alt=media&token=991761d1-4774-440a-8f5f-985d0f7c9e53');

    setState(() => _isLoading = false);
  }

  changePDF(value) async {
    setState(() => _isLoading = true);

    document = await PDFDocument.fromURL(
      "https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem3%2FComplex%20Variables%20and%20Partial%20Differential%20Equations%2Fquestionpapers%2FS2020.pdf?alt=media&token=991761d1-4774-440a-8f5f-985d0f7c9e53",
    );

    setState(() => _isLoading = false);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: document,
                zoomSteps: 1,
              ),
      ),
    );
  }
}

class W2021 extends StatefulWidget {
  @override
  _W2021State createState() => _W2021State();
}

class _W2021State extends State<W2021> {
  bool _isLoading = true;
  late PDFDocument document;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    super.initState();
    loadDocument();
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  loadDocument() async {
    document = await PDFDocument.fromURL(
        'https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem3%2FComplex%20Variables%20and%20Partial%20Differential%20Equations%2Fquestionpapers%2FW2021.pdf?alt=media&token=7663c65e-6864-4d9d-8bef-1ffcd5de6497');

    setState(() => _isLoading = false);
  }

  changePDF(value) async {
    setState(() => _isLoading = true);

    document = await PDFDocument.fromURL(
      "https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem3%2FComplex%20Variables%20and%20Partial%20Differential%20Equations%2Fquestionpapers%2FW2021.pdf?alt=media&token=7663c65e-6864-4d9d-8bef-1ffcd5de6497",
    );

    setState(() => _isLoading = false);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: document,
                zoomSteps: 1,
              ),
      ),
    );
  }
}

class S2022 extends StatefulWidget {
  @override
  _S2022State createState() => _S2022State();
}

class _S2022State extends State<S2022> {
  bool _isLoading = true;
  late PDFDocument document;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    super.initState();
    loadDocument();
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  loadDocument() async {
    document = await PDFDocument.fromURL(
        'https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem3%2FComplex%20Variables%20and%20Partial%20Differential%20Equations%2Fquestionpapers%2FS2022.pdf?alt=media&token=080293d4-e839-449a-ba12-0d3eeb56334d');

    setState(() => _isLoading = false);
  }

  changePDF(value) async {
    setState(() => _isLoading = true);

    document = await PDFDocument.fromURL(
      "https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem3%2FComplex%20Variables%20and%20Partial%20Differential%20Equations%2Fquestionpapers%2FS2022.pdf?alt=media&token=080293d4-e839-449a-ba12-0d3eeb56334d",
    );

    setState(() => _isLoading = false);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : PDFViewer(
                document: document,
                zoomSteps: 1,
              ),
      ),
    );
  }
}
