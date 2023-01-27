import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    Key? key,
  }) : super(key: key);
  final _signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signUpFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email Address",
            style: textStyle.copyWith(color: primaryColor),
          ),
          const TextFieldCustom(
            hintText: 'Please Enter Your Email',
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "First Name",
            style: textStyle.copyWith(
              color: primaryColor,
            ),
          ),
          const TextFieldCustom(
            hintText: 'Please Enter Your First Name',
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Last Name",
            style: textStyle.copyWith(
              color: primaryColor,
            ),
          ),
          const TextFieldCustom(
            hintText: 'Please Enter Your Last Name',
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
          const TextFieldCustom(
            hintText: 'Please Enter Your Password',
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(
                double.infinity,
                41.1,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
            ),
            child: Text(
              'Sign Up',
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
              'Back To Login',
              style: textStyle.copyWith(
                color: linkText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
