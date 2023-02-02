import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/login/login_form.dart';
import 'package:ecommerce_app/widgets/social_btn.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void action() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),

      ),
      body: SafeArea(
        
          child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              padding: kPaddingWelocome,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                        color: textColor,
                        height: 1.5,
                        fontSize: 18,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  // const Divider(
                  //   thickness: 0.5,
                  //   color: Color.fromARGB(255, 190, 189, 189),
                  // ),
                  const SizedBox(
                    height: 8,
                  ),
                  SocialBtn(
                    action: action,
                    icon: 'assets/images/google.png',
                    title: 'Login with Google',
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SocialBtn(
                    action: action,
                    icon: 'assets/images/facebook.png',
                    title: 'Login with Facebook',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  LogInForm(),

                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Forgot Password?',
                      textAlign: TextAlign.left,
                      style: textStyle.copyWith(
                        color: linkText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
