import 'package:cached_network_image/cached_network_image.dart';
import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/core/styles.dart';
import 'package:dokan_demo/presentation/ui/widgets/home/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Product List",
          style: robotoH6Style(LightModeColor.searchMenuIcon.color),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/search_action_icon.svg",
                width: 22.w,
                height: 22.h,
                fit: BoxFit.scaleDown,
                color: LightModeColor.searchMenuIcon.color,
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(bottom: 30.h, top: 10.h),
              sliver: SliverToBoxAdapter(
                child: CustomSearchView(onFilter: () {}, onShortBy: () {}),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.60,
                  mainAxisSpacing: 14.h,
                  crossAxisSpacing: 14.h),
              delegate: SliverChildBuilderDelegate((context, index) {
                return Wrap(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Card(
                        color: LightModeColor.white.color,
                        shadowColor: LightModeColor.inputIcon.color,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8)),
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.asset(
                                    "assets/demo_image.jpeg",
                                    fit: BoxFit.fill,
                                  ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: 18.h,
                                  left: 18.w,
                                  top: 14.h,
                                  right: 6.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Girls Stylish Dresses",
                                    style: robotoBSStyle(
                                        LightModeColor.black.color),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$150",
                                        style: latoBMRegularCrossLineStyle(
                                            LightModeColor
                                                .productRegularPrice.color),
                                      ),
                                      SizedBox(
                                        width: 6.w,
                                      ),
                                      Text(
                                        "\$79.00",
                                        style: robotoBLLBoldStyle(
                                            LightModeColor.black.color),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  RatingBarIndicator(
                                    rating: 4,
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 10.r,
                                    unratedColor: Colors.amber.withAlpha(50),
                                    direction: Axis.horizontal,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              }, childCount: 10),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}
