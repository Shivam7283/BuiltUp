import 'package:builtup/screens/reset_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:builtup/resources/auth_method.dart';
import 'package:builtup/responsive/mobile_layout_screen.dart';
import 'package:builtup/responsive/responsive_layout_screen.dart';
import 'package:builtup/responsive/web_screen_layout.dart';
import 'package:builtup/screens/signup_screen.dart';
import 'package:builtup/utils/colors.dart';
import 'package:builtup/utils/utils.dart';
import 'package:builtup/widgets/text_input_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);

    if (res == 'sucess') {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => ResponsiveLayout(
            mobileScreenLayout: MobileScreeenLayout(),
            webScreenLayout: WebScreeenLayout(),
          ),
        ),
      );
    } else {
      showSnackBar(res, context);
    }

    setState(() {
      _isLoading = false;
    });
  }

  void navigateToSignup() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignupScreen()));
  }

  void navigateToForgotPass() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ForgotPassword()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 1,
              ),
              //svg
              Image.asset(
                "assets/Built-Up.png",
                height: 50,
                //color: Colors.white,
              ),
              const SizedBox(
                height: 6,
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
                height: 24,
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
              const SizedBox(
                height: 24,
              ),
              //button
              InkWell(
                onTap: loginUser,
                child: Container(
                  child: _isLoading
                      ? Center(
                          child: const CircularProgressIndicator(
                            color: primaryColor,
                          ),
                        )
                      : const Text("Log In"),
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
                height: 12,
              ),
              Flexible(
                child: Container(
                  height: 20,
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
                      "Don't Have An Account?",
                      style: TextStyle(color: Colors.black),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  GestureDetector(
                    onTap: navigateToSignup,
                    child: Container(
                      child: const Text(
                        "Sign Up.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: navigateToForgotPass,
                      child: Text("Reset Password"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
