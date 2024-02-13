import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpAndSupport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help & Support'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 50,
              onPressed: () async {
                const url = 'mailto:builtupengg@gmail.com';

                if (await canLaunch(url)) {
                  await launch(url, forceSafariVC: false);
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: Icon(Icons.mail_outline),
            ),

            // IconButton(
            //   iconSize: 50,
            //   onPressed: () {},
            //   icon: Icon(Icons.whatshot_outlined),
            // ),
          ],
        ),
      ),
    );
  }
}
