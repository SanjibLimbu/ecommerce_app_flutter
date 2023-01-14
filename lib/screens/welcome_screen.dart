import 'dart:ui';

import 'package:ecommerce_app/widgets/appbar.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: AppBarWidget()),
    );
  }
}

