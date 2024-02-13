import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:builtup/resources/auth_method.dart';
import 'package:builtup/responsive/mobile_layout_screen.dart';
import 'package:builtup/responsive/responsive_layout_screen.dart';
import 'package:builtup/responsive/web_screen_layout.dart';
import 'package:builtup/utils/colors.dart';
import 'package:builtup/utils/utils.dart';
import 'package:builtup/widgets/text_input_field.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  Uint8List? _image;
  bool _isLoading = false;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  void signUpUser() async {
    setState(() {
      _isLoading = true;
    });

    String res = await AuthMethods().signUpUser(
      email: _emailController.text,
      password: _passwordController.text,
      username: _usernameController.text,

      //bio: _bioController.text,
      //file: _image,
    );
    if (res != 'sucess') {
      showSnackBar(res, context);
      print(res);
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => ResponsiveLayout(
            mobileScreenLayout: MobileScreeenLayout(
                // uid: FirebaseAuth.instance.currentUser!.uid,
                ),
            webScreenLayout: WebScreeenLayout(),
          ),
        ),
      );
    }

    // if (res == 'sucess') {
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(
    //       builder: (context) => ResponsiveLayout(
    //         mobileScreenLayout: MobileScreeenLayout(
    //           uid: FirebaseAuth.instance.currentUser!.uid,
    //         ),
    //         webScreenLayout: WebScreeenLayout(),
    //       ),
    //     ),
    //   );
    // } else {
    //   showSnackBar(res, context);
    // }
    setState(() {
      _isLoading = false;
    });
  }

  void navigateToLogin() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 1,
              ),
              //svg
              // SvgPicture.asset(
              //   'assets/ic_instagram.svg',
              //   color: primaryColor,
              //   height: 64,
              // ),
              Image.asset(
                "assets/Built-Up.png",
                height: 50,
                //color: Colors.white,
              ),
              const SizedBox(
                height: 6,
              ),

              //circular widget
              // Stack(
              //   children: [
              //     _image != null
              //         ? CircleAvatar(
              //             radius: 30, backgroundImage: MemoryImage(_image!))
              //         : const CircleAvatar(
              //             radius: 30,
              //             // backgroundImage: NetworkImage(
              //             //     "https://media.istockphoto.com/vectors/male-profile-flat-blue-simple-icon-with-long-shadow-vector-id522855255?k=20&m=522855255&s=612x612&w=0&h=fLLvwEbgOmSzk1_jQ0MgDATEVcVOh_kqEe0rqi7aM5A="),
              //             backgroundImage: AssetImage('assets/Built-Up.png'),
              //           ),
              //     Positioned(
              //       bottom: -10,
              //       left: 25,
              //       child: IconButton(
              //         onPressed: selectImage,
              //         icon: const Icon(
              //           Icons.add_a_photo,
              //           color: Colors.black,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 7,
              // ),

              //text username
              Container(
                color: Colors.blueGrey,
                child: TextFieldInput(
                    textEditingController: _usernameController,
                    HintText: "Create username",
                    textInputType: TextInputType.text),
              ),

              const SizedBox(
                height: 10,
              ),

              //inputemail
              Container(
                color: Colors.blueGrey,
                child: TextFieldInput(
                    textEditingController: _emailController,
                    HintText: "Enter your Email id",
                    textInputType: TextInputType.emailAddress),
              ),

              const SizedBox(
                height: 10,
              ),
              //input pass
              Container(
                color: Colors.blueGrey,
                child: TextFieldInput(
                  textEditingController: _passwordController,
                  HintText: "Enter your Password",
                  textInputType: TextInputType.text,
                  isPass: true,
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              //
              // Container(
              //   color: Colors.blueGrey,
              //   child: TextFieldInput(
              //     textEditingController: _bioController,
              //     HintText: "Create a BIO",
              //     textInputType: TextInputType.text,
              //   ),
              // ),

              const SizedBox(
                height: 10,
              ),

              //button
              InkWell(
                onTap: signUpUser,
                child: Container(
                  child: _isLoading
                      ? Center(
                          child: const CircularProgressIndicator(
                            color: primaryColor,
                          ),
                        )
                      : const Text("Sign Up"),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: Container(
                  height: 0,
                ),
                flex: 2,
              ),
              // transform
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text(
                      "Already Have An Account?",
                      style: TextStyle(color: Colors.black),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  GestureDetector(
                    onTap: navigateToLogin,
                    child: Container(
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
