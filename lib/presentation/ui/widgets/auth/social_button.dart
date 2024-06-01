import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.onTap, required this.icon});
  final Function() onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
            width: 56.w,
            height: 56.h,
            child: Image.asset(icon)),
      ),
    );
  }
}
