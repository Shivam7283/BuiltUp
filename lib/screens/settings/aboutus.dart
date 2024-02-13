import 'package:flutter/services.dart';
//import 'device_orientation/device_orientation_demo.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("About US"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/adcl-tech.appspot.com/o/others%2Fabout.jpeg?alt=media&token=843cc063-b3d7-408b-8af7-2872fafed42e"),
            ],
          ),
        ),
      ),
    );
  }
}
