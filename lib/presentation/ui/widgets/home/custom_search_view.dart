import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/core/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchView extends StatelessWidget {
  const CustomSearchView({super.key, required this.onFilter, required this.onShortBy});

  final Function() onFilter;
  final Function() onShortBy;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 60.h,
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      decoration: BoxDecoration(
        color: LightModeColor.white.color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: LightModeColor.shadowStroke.color,
            spreadRadius: 0.01,
            blurRadius: 0.01,
            blurStyle: BlurStyle.solid,
            offset:
            const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: onFilter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/filter_icon.svg",
                  width: 15.w,
                  height: 16.h,
                  fit: BoxFit.scaleDown,
                  color: LightModeColor.filterIcon.color,
                ),
                SizedBox(width: 10.w,),
                Text("Filter",style: latoBMRegularStyle(LightModeColor.filterText.color),),
              ],
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: onShortBy,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sort by",style: latoBMRegularStyle(LightModeColor.filterText.color)),
                    SizedBox(width: 4.w,),
                    SvgPicture.asset(
                      "assets/down_arrow_icon.svg",
                      width: 7.w,
                      height: 13.h,
                      fit: BoxFit.scaleDown,
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                "assets/search_menu_icon.svg",
                width: 18.w,
                height: 13.h,
                fit: BoxFit.scaleDown,
                color: LightModeColor.searchMenuIcon.color,
              ),
            ],
          )
        ],
      ),
    );
  }
}
