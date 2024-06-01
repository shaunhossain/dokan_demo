import 'package:dokan_demo/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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


  void navRoute(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          body: widget.navigationShell,
          bottomNavigationBar: NavigationBar(
            selectedIndex: state.tabIndex,
            destinations: [
              NavigationDestination(
                icon: SvgPicture.asset(
                  "assets/home_icon.svg",
                  width: 20,
                  height: 20,
                  fit: BoxFit.scaleDown,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  "assets/category_icon.svg",
                  width: 20,
                  height: 20,
                  fit: BoxFit.scaleDown,
                ),
                label: 'Category',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  "assets/search_nav_icon.svg",
                  width: 20,
                  height: 20,
                  fit: BoxFit.scaleDown,
                ),
                label: 'Search',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  "assets/cart_icon.svg",
                  width: 20,
                  height: 20,
                  fit: BoxFit.scaleDown,
                ),
                label: 'Cart',
              ),
              NavigationDestination(
                icon: SvgPicture.asset(
                  "assets/profile_icon.svg",
                  width: 20,
                  height: 20,
                  fit: BoxFit.scaleDown,
                ),
                label: 'Profile',
              ),
            ],
            onDestinationSelected: (index) {
              context
                  .read<BottomNavigationBloc>()
                  .add(BottomNavigationEvent.tabChange(index));
            },
          ),
        ),
      );
    }, listener: (context, state) {
      state.when(route: navRoute);
    });
  }
}
