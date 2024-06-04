import 'package:dokan_demo/core/app_colors.dart';
import 'package:flutter/material.dart';

class CustomLoginLoaderIndicator extends StatelessWidget {
  const CustomLoginLoaderIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      alignment: Alignment.center,
      child: CircularProgressIndicator(
        strokeWidth: 3,
        color: LightModeColor.white.color,
      ),
    );
  }
}
