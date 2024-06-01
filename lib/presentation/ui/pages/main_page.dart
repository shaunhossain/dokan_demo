import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:dokan_demo/presentation/ui/widgets/bottom_nav/bottom_nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  int selectedIndex = 0;

  void navRoute(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
      return Scaffold(
        key: _scaffoldKey,
        body: widget.navigationShell,
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            navRoute(2);
          },
          tooltip: 'Search',
          elevation: 2.0,
          shape: const CircleBorder(),
          child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle, // circular shape
            gradient: LinearGradient(
              colors: [
                LightModeColor.linerFirst.color,
                LightModeColor.linerSecond.color,
              ],
            ),
          ),
          child:SvgPicture.asset(
            "assets/search_nav_icon.svg",
            width: 22.w,
            height: 22.h,
            fit: BoxFit.scaleDown,
            color: Colors.white,
          ),
        ),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 8,
          clipBehavior: Clip.hardEdge,
          child: Card(
            color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            margin: EdgeInsets.zero,
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r))),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomNavItem(
                    onPress: () {
                      navRoute(0);
                    },
                    icon: "assets/home_icon.svg",
                    index: 0,
                    selectedIndex: selectedIndex),
                BottomNavItem(
                    onPress: () {
                      navRoute(1);
                    },
                    icon: "assets/category_icon.svg",
                    index: 1,
                    selectedIndex: selectedIndex),
                SizedBox(
                  width: 24.w,
                ),
                BottomNavItem(
                    onPress: () {
                      navRoute(3);
                    },
                    icon: "assets/cart_icon.svg",
                    index: 3,
                    selectedIndex: selectedIndex),
                BottomNavItem(
                    onPress: () {
                      navRoute(4);
                    },
                    icon: "assets/profile_icon.svg",
                    index: 4,
                    selectedIndex: selectedIndex),
              ],
            ),
          ),
        ),
      );
    }, listener: (context, state) {
      state.when(route: navRoute);
    });
  }
}
