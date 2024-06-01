import 'package:dokan_demo/core/styles.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Profile",style: robotoH5Style(Colors.black),),
    );
  }
}
