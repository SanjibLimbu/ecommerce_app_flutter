import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/drawer/cart/cart_drawer.dart';
import 'package:ecommerce_app/widgets/mimi_app_bar.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

import '../btn.dart';

class AddressWidget extends StatefulWidget {
  const AddressWidget({super.key});

  @override
  State<AddressWidget> createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
  final GlobalKey<ScaffoldState> _scaffoldKeyCart = GlobalKey<ScaffoldState>();
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: MimiAppBar(
          scaffoldKeyCart: _scaffoldKeyCart,
          titleAppbar: Center(
            child: Text(
              'Address',
              style: textStyle.copyWith(
                color: textColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
      key: _scaffoldKeyCart,
      endDrawer: const CartDrawer(),
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
                  'Account Details',
                  style: textStyle.copyWith(
                    fontSize: 15,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
               
                Text(
                  "Address",
                  style: textStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const TextFieldCustom(
                  initialValue: '',
                  hintText: 'Address:Street, House No/Apartment No',
                   color: white,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "CIty",
                  style: textStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const TextFieldCustom(
                  initialValue: '',
                  hintText: 'City',
                   color: white,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "State",
                  style: textStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const TextFieldCustom(
                  initialValue: '',
                  hintText: 'State',
                   color: white,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Country",
                  style: textStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const TextFieldCustom(
                  initialValue: '',
                  hintText: 'Please Enter Your Zipcode',
                   color: white,
                ),
                 const SizedBox(
                  height: 15,
                ),
                TextButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  icon: Checkbox(
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue!;
                      });
                    },
                    value: value,
                  ),
                  label: Text(
                    'As the Default',
                    textAlign: TextAlign.center,
                    style: textStyle.copyWith(
                      color: primaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const ButtonSave(
                  btnTitle: 'Add Address',
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
