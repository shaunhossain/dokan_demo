import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.index,
      required this.selectedIndex});
  final Function() onPress;
  final String icon;
  final int index;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPress,
      icon: SvgPicture.asset(
        icon,
        width: 22.w,
        height: 22.h,
        fit: BoxFit.fill,
        color: index == selectedIndex
            ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
            : Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      ),
    );
  }
}
