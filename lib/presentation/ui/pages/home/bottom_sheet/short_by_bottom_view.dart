import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortByBottomView extends StatelessWidget {
  const ShortByBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.47,
      minChildSize: 0.2,
      maxChildSize: 0.47,
      expand: false,
      builder: (_, controller){
        return Container(
          width: double.maxFinite,
          height: 100.h,
        );
      },
    );
  }
}
