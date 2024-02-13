import 'package:builtup/Semester/sem1/sem1sub.dart';
import 'package:builtup/Semester/sem2/sem2sub.dart';
import 'package:builtup/Semester/sem3/sem3sub.dart';
import 'package:builtup/Semester/sem4/sem4sub.dart';
import 'package:builtup/Semester/sem5/sem5sub.dart';
import 'package:builtup/Semester/sem6/sem6sub.dart';
import 'package:builtup/Semester/sem7/sem7sub.dart';
import 'package:builtup/resources/auth_method.dart';
import 'package:builtup/screens/settings/settings_option.dart';
import 'package:builtup/screens/login_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileScreeenLayout extends StatefulWidget {
  //final String uid;
  const MobileScreeenLayout({
    Key? key,
    //required this.uid,
  }) : super(key: key);

  @override
  _MobileScreeenLayoutState createState() => _MobileScreeenLayoutState();
}

class _MobileScreeenLayoutState extends State<MobileScreeenLayout> {
  var userData = {};
  bool isLoading = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> disableCapture() async {
    //disable screenshots and record screen in current screen
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  void initState() {
    super.initState();
    getData();
    disableCapture();
  }

  // void launchTelegram() async {
  //   String url = "https://t.me/gtuinsta";
  //   print("launchingUrl: $url");
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   }
  // }

  getData() async {
    setState(() {
      isLoading = true;
    });
    try {
      // var userSnap = await FirebaseFirestore.instance
      //     .collection('users')
      //     .doc(widget.uid)
      //     .get();

      User currentUser = _auth.currentUser!;
      print(currentUser.displayName);
      var snap =
          await _firestore.collection('users').doc(currentUser.uid).get();

      //get post length

      //userData = userSnap.data()!;
      userData = snap.data()!;
      setState(() {});
    } catch (e) {
      //   showSnackBar(e.toString(), context);

      print(e.toString());
    }
    setState(() {
      isLoading = false;
    });
  }
  // String username = "";
  // @override
  // void initState() {
  //   super.initState();
  //   getUsername();
  // }
  //
  // void getUsername() async {
  //   DocumentSnapshot snap = await FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(FirebaseAuth.instance.currentUser!.uid)
  //       .get();
  //
  //   setState(() {
  //     username = (snap.data() as Map<String, dynamic>)['username'];
  //   }); //print(snap.data());
  // }
  // int _page = 0;
  // late PageController pageController;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   pageController = PageController();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   pageController.dispose();
  // }
  //
  // void navigationTapped(int page) {
  //   pageController.jumpToPage(page);
  // }
  //
  // void onPageChanged(int page) {
  //   setState(() {
  //     _page = page;
  //   });
  // }

  void _launchURLWP() async =>
      await launch('https://chat.whatsapp.com/DGUyU1CKWjC3Wrq66SKCm2');
  void _launchURLTl() async => await launch('https://telegram.me/gtuinsta');
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            appBar: AppBar(
              title: Text(
                "Hi " +
                    (userData['username'] == ''
                        ? 'Engineer'
                        : userData['username']) +
                    "!",
              ),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          child: Text(
                            userData['username'] == ''
                                ? 'M'
                                : userData['username'][0],
                            style: TextStyle(fontSize: 50.0),
                          ),
                          radius: 50.0,
                          // backgroundImage: NetworkImage(
                          //     //    "https://instagram.famd1-3.fna.fbcdn.net/v/t51.2885-19/271939351_1226419441181952_5757893482283772737_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.famd1-3.fna.fbcdn.net&_nc_cat=100&_nc_ohc=Eh91JVWK5hQAX892V1G&edm=AEw_LKABAAAA&ccb=7-4&oh=00_AT-1b1mTvXRfzYB74FRzmyN89ektm4OCFZEKpZDJ6GoytQ&oe=624F2B16&_nc_sid=c7f314"
                          //     //userData['photoUrl'],
                          //     ''),
                        ),
                        Text(
                          //userData['username'],
                          userData['username'] == ''
                              ? 'Engineer'
                              : userData['username'],
                          //"ggxr",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )
                      ],
                    ),
                  ),
                  // ListTile(
                  //   leading: Icon(Icons.account_balance_wallet_outlined),
                  //   title: const Text("Wallet"),
                  // ),

                  ListTile(
                    leading: Icon(Icons.update_outlined),
                    title: const Text("GTU Updates"),
                    onTap: _launchURLTl,
                    //onTap: launchTelegram,
                  ),
                  ListTile(
                    leading: Icon(Icons.people_alt_outlined),
                    title: const Text("Join Builtup Community"),
                    onTap: _launchURLWP,
                    //onTap: launchTelegram,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: const Text("Settings"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingOption(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.directions_run),
                    title: const Text("Logout"),
                    onTap: () async {
                      await AuthMethods().signOut();
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              primary: true,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 180,
                      child: ListView(
                        children: [
                          CarouselSlider(
                            items: [
                              //1st Image of Slider
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://pbs.twimg.com/media/FmKlVWtagAQ_aDZ?format=jpg&name=large"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              //2nd Image of Slider
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://pbs.twimg.com/media/FmKlTAcaUAAS_ni?format=jpg&name=4096x4096"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              //3rd Image of Slider
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://pbs.twimg.com/media/FmKlQYFaMAAuvCi?format=jpg&name=4096x4096"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              //4th Image of Slider
                              Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://pbs.twimg.com/media/DEsNiPbW0AEJhmb?format=jpg&name=4096x4096"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],

                            //Slider Container properties
                            options: CarouselOptions(
                              height: 180.0,
                              enlargeCenterPage: true,
                              autoPlay: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration:
                                  Duration(milliseconds: 800),
                              viewportFraction: 0.8,
                              disableCenter: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView(
                        children: <Widget>[
                          // ListTile(
                          //   tileColor: Colors.grey,
                          //   title: Column(
                          //     children: [
                          //       Text("Semester 1"),
                          //     ],
                          //   ),
                          //   leading: Icon(Icons.alarm_on_rounded),
                          //   trailing: Icon(Icons.forward),
                          //   onTap: () {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => Sem1Subject(),
                          //         ));
                          //   },
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.all(
                          //       Radius.circular(30.0),
                          //     ),
                          //   ),
                          // ),
                          ListTile(
                            tileColor: Colors.grey,
                            title: Text("Semester 1"),
                            leading: Icon(Icons.alarm_on_rounded),
                            trailing: Icon(Icons.forward),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sem1Subject(),
                                  ));
                            },
                            //onTap: showSnackBar("Not ready to use", context),
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
                            title: Text("Semester 2"),
                            leading: Icon(Icons.alarm_on_rounded),
                            trailing: Icon(Icons.forward),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sem2Subject(),
                                  ));
                            },
                            //onTap: showSnackBar("Not ready to use", context),
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
                              "Semester 3",
                              style: TextStyle(color: Colors.white),
                            ),
                            leading: Icon(
                              Icons.alarm_on_rounded,
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
                                    builder: (context) => Sem3Subject(),
                                  ));
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
                            title: Text("Semester 4"),
                            leading: Icon(Icons.alarm_on_rounded),
                            trailing: Icon(Icons.forward),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sem4Subject(),
                                  ));
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
                            title: Text("Semester 5"),
                            leading: Icon(Icons.alarm_on_rounded),
                            trailing: Icon(Icons.forward),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sem5Subject(),
                                  ));
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
                            title: Text("Semester 6"),
                            leading: Icon(Icons.alarm_on_rounded),
                            trailing: Icon(Icons.forward),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sem6Subject(),
                                  ));
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
                            title: Text("Semester 7"),
                            leading: Icon(Icons.alarm_on_rounded),
                            trailing: Icon(Icons.forward),
                            // onTap: () {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) => Sem7Subject(),
                            //       ));
                            // },
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Sem7Subject(),
                                  ));
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
                          //Sem 8
                          // ListTile(
                          //   tileColor: Colors.grey,
                          //   title: Text("Semester 8"),
                          //   leading: Icon(Icons.alarm_on_rounded),
                          //   trailing: Icon(Icons.forward),
                          //   onTap: () {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => sem8DMEpapers(),
                          //         ));
                          //   },
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.all(
                          //       Radius.circular(30.0),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 300.0,
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // floatingActionButton: FloatingActionButton(
            //   tooltip: 'Increment',
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => SemList(),
            //         ));
            //   },
            //   child: Icon(Icons.error),
            // ),
          );
  }
}
