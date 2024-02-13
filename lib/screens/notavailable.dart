import 'package:flutter/material.dart';

class NotAvail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Comming Soon"),
      ),
      body: Center(
        child: Text(
          "Not available for use",
          style: TextStyle(color: Colors.black),
        ),
      ),
    ));
  }
}
