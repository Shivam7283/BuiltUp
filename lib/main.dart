import 'package:builtup/screens/splashscreen/splashscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:builtup/providers/user_provider.dart';
import 'package:builtup/responsive/responsive_layout_screen.dart';
import 'package:builtup/screens/login_screen.dart';
import 'package:builtup/utils/colors.dart';
import 'package:provider/provider.dart';
import 'responsive/mobile_layout_screen.dart';
import 'responsive/web_screen_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        name: 'BuiltUp',
        options: const FirebaseOptions(
            apiKey: "AIzaSyBWUX_P3PSUlGiS6QA-GaqO5CJcZHYdSzI",
            appId: "1:940969714762:android:5de810ccdab73d392032b3",
            messagingSenderId: "940969714762",
            projectId: "adcl-tech",
            storageBucket: "adcl-tech.appspot.com"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(SplashScreen());
  //runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of our application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Built-Up',
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData) {
                return ResponsiveLayout(
                  mobileScreenLayout: MobileScreeenLayout(),
                  webScreenLayout: WebScreeenLayout(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text('${snapshot.error}'),
                );
              }
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: primaryColor,
                ),
              );
            }
            return LoginScreen();
          },
        ),
      ),
    );
  }
}
