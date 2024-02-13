import 'package:flutter/material.dart';
import 'package:builtup/utils/colors.dart';

class WebScreeenLayout extends StatelessWidget {
  const WebScreeenLayout({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is web",
          style: TextStyle(color: webBackgroundColor),
        ),
      ),
    );
  }
}
