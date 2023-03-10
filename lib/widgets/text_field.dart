import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String hintText;
  final int maxline;
  final String initialValue;
  final Color color;
  const TextFieldCustom({
    Key? key,
    this.hintText = '',
    this.maxline = 1,
    this.initialValue = '',
    this.color=bgColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      style: textStyle.copyWith(
        color: primaryColor,
      ),
      initialValue: initialValue,
      keyboardType: TextInputType.multiline,
      maxLines: maxline,
      decoration: InputDecoration(
        filled: true,
        fillColor: color,
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 13,
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              4,
            ),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffe4e6eb),
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffbdcbd2),
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ),
        ),
      ),
    );
  }
}
