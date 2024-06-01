import 'package:dokan_demo/core/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("home",style: robotoH5Style(Colors.black),),
    );
  }
}
