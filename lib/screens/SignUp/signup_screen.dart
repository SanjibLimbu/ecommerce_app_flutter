import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/SignUp/signup_form.dart';
import 'package:ecommerce_app/widgets/social_btn.dart';

import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    "Sign Up",
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
                    title: 'Sign Up with Google',
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SocialBtn(
                    action: action,
                    icon: 'assets/images/facebook.png',
                    title: 'Sign up with Facebook',
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  SignUpForm(),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
