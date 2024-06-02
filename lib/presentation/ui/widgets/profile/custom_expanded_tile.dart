import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomExpandedTile extends StatelessWidget {
  const CustomExpandedTile(
      {super.key,
      required this.index,
      required this.onExpansionChanged,
      required this.isExpand, required this.title, required this.leadingIcon, required this.children});
  final int index;
  final Function(bool) onExpansionChanged;
  final bool isExpand;
  final Widget title;
  final String leadingIcon;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          splashColor: LightModeColor.white.color,
          focusColor: LightModeColor.white.color,
        inputDecorationTheme: InputDecorationTheme(
          fillColor: LightModeColor.white.color,
          filled: true,
          isDense: true,
          iconColor: LightModeColor.inputIcon.color,
          helperStyle: robotoBLStyle(LightModeColor.hint.color),
          errorStyle: robotoBLStyle(LightModeColor.button.color),
          hintStyle: robotoBLStyle(LightModeColor.hint.color),
          contentPadding: EdgeInsets.only(left: 19.w,top: 15.h,bottom: 15.h),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              width: 1,
              color: LightModeColor.profileInputHint.color.withOpacity(0.12),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              width: 1,
              color: LightModeColor.profileInputHint.color.withOpacity(0.12),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              width: 1,
              color: LightModeColor.profileInputHint.color.withOpacity(0.12),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              width: 1,
              color: LightModeColor.profileInputHint.color.withOpacity(0.12),
            ),
          ),
        ),
      ),
      child: ExpansionTile(
        key: PageStorageKey(index.toString()),
        trailing: RotatedBox(
          quarterTurns: isExpand ? 1 : 0,
          child: SvgPicture.asset(
            "assets/right_arrow_icon.svg",
            width: 24.w,
            height: 14.h,
            fit: BoxFit.fill,
            color: isExpand ? LightModeColor.activeExpandIcon.color : LightModeColor.expandIcon.color,
          ),
        ),
        leading: SvgPicture.asset(
          leadingIcon,
          width: 20.w,
          height: 20.h,
          fit: BoxFit.fill,
          color: LightModeColor.inputIcon.color,
        ),
        maintainState: true,
        collapsedShape: const RoundedRectangleBorder(
          side: BorderSide.none,
        ),
        shape: const RoundedRectangleBorder(
          side: BorderSide.none,
        ),
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        title: title,
        onExpansionChanged: onExpansionChanged,
        children: children,
      ),
    );
  }
}
