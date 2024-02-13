import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/services.dart';

class sem7RACpapers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solution Papers"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ListTile(
              tileColor: Colors.grey,
              title: Text(
                "Summer 2022",
              ),
              leading: Icon(Icons.description),
              trailing: Icon(Icons.forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => S2022(),
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
                "Winter 2021",
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
        'https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem7%2FRefrigeration%20and%20Air%20conditioning%2Fsolutions%2FS2022.pdf?alt=media&token=96c9c244-21e0-4a83-b7b6-38c972539054');

    setState(() => _isLoading = false);
  }

  changePDF(value) async {
    setState(() => _isLoading = true);

    document = await PDFDocument.fromURL(
      "https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem7%2FRefrigeration%20and%20Air%20conditioning%2Fsolutions%2FS2022.pdf?alt=media&token=96c9c244-21e0-4a83-b7b6-38c972539054",
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
        'https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem7%2FRefrigeration%20and%20Air%20conditioning%2Fsolutions%2FW2021.pdf?alt=media&token=bfd841ba-41b7-4014-abcc-e8a99f2e4653');

    setState(() => _isLoading = false);
  }

  changePDF(value) async {
    setState(() => _isLoading = true);

    document = await PDFDocument.fromURL(
      "https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/builtup%2Fmech%2Fsem7%2FRefrigeration%20and%20Air%20conditioning%2Fsolutions%2FW2021.pdf?alt=media&token=bfd841ba-41b7-4014-abcc-e8a99f2e4653",
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
