import 'package:cached_network_image/cached_network_image.dart';
import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/core/styles.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<NestedScrollViewState> nestedScrollKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("My Account",style: robotoH6Style(LightModeColor.searchMenuIcon.color),),
        centerTitle: true,
      ),
      body: NestedScrollView(
        key: nestedScrollKey,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  DottedBorder(
                      borderType: BorderType.Circle,
                      dashPattern: const [2, 5],
                      color: LightModeColor.radio.color,
                      child: Container(
                        width: 120.w,
                        height: 120.h,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.white,
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: ClipOval(
                                  child: CachedNetworkImage(
                                    imageUrl:
                                    "",
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => Center(
                                        child: SizedBox(
                                            width: 16.w,
                                            height: 16.h,
                                            child:
                                            const CircularProgressIndicator(
                                              strokeWidth: 1,
                                            ))),
                                    errorWidget:
                                        (context, url, error) =>
                                        SvgPicture.asset(
                                          'assets/avatar_icon.svg',
                                          width: 25.w,
                                          height: 31.h,
                                          fit: BoxFit.scaleDown,
                                        ),
                                  ),
                                ),
                              )),
                        ),
                      )),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text("John Smith",style: latoH5Style(LightModeColor.black.color),),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text("info@johnsmith.com",style: latoBMRegularStyle(LightModeColor.mailText.color),),
                ],
              ),
            )
          ];
        },
        body: Container(),
      ),);
  }
}
