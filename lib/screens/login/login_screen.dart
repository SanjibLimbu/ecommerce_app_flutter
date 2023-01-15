import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/widgets/social_btn.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void action() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              padding: kPaddingWelocome,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  const Text(
                    "Email Address",
                    style: fieldLabelStyle,
                  ),
                  const TextFieldCustom(
                    hintText: 'Please Enter Your Email',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Password",
                    style: fieldLabelStyle,
                  ),
                  const TextFieldCustom(
                    hintText: 'Please Enter Your Password',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size(
                            135,
                            41.1,
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 16,
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: fieldLabelStyle.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            letterSpacing: .9,
                            height: 0,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Create An Account",
                          style: fieldLabelStyle.copyWith(
                            fontSize: 13,
                          ),
                        ),
                      )
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: fieldLabelStyle.copyWith(
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
