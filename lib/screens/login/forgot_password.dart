import 'package:ecommerce_app/constants/color.dart';

import 'package:ecommerce_app/constants/style.dart';

import 'package:ecommerce_app/screens/settings/btn.dart';

import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Forgot Password',
                  style: textStyle.copyWith(
                    fontSize: 15,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Email Address",
                  style: textStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const TextFieldCustom(
                  hintText: 'Please Enter Your Email',
                  color: white,
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 50,
                ),
                const ButtonSave(
                  btnTitle: 'Send Email',
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
