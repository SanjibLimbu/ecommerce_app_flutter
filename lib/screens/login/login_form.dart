import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class LogInForm extends StatelessWidget {
  final _loginpFormKey = GlobalKey<FormState>();

  LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _loginpFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email Address",
              style: textStyle.copyWith(
                color: primaryColor,
              ),
            ),
            TextFieldCustom(
              hintText: 'Please Enter Your Email',
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Password",
              style: textStyle.copyWith(
                color: primaryColor,
              ),
            ),
            TextFieldCustom(
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
                    style: textStyle.copyWith(
                      color: primaryColor,
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
                    style: textStyle.copyWith(
                      color: primaryColor,
                      fontSize: 13,
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
