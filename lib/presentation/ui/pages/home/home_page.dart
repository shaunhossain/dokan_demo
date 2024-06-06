import 'package:cached_network_image/cached_network_image.dart';
import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/core/styles.dart';
import 'package:dokan_demo/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:dokan_demo/presentation/bloc/trigger_bottom_sheet_cubit/trigger_bottom_sheet_cubit.dart';
import 'package:dokan_demo/presentation/ui/widgets/home/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<ProductBloc>().add(const ProductEvent.getProducts());
    super.initState();
  }

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
                child: CustomSearchView(onFilter: () {
                  context
                      .read<ProductBloc>()
                      .add(const ProductEvent.filterProduct(name: "Rating"));
                }, onShortBy: () {
                 context.read<TriggerBottomSheetCubit>().openSheet();
                 //  context
                 //      .read<ProductBloc>()
                 //      .add(const ProductEvent.filterProduct(name: "LowestPrice"));
                }),
              ),
            ),
            BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
              if (state.status == ProductStatus.success) {
                return SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.55,
                    mainAxisSpacing: 14.h,
                    crossAxisSpacing: 14.w,
                  ),
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return SizedBox(
                      width: 160.w,
                      height: 290.h,
                      child: GestureDetector(
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
                                  child: SizedBox(
                                    width: 160.w,
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: CachedNetworkImage(
                                        imageUrl: state.products?[index].images
                                                ?.first.src ??
                                            "",
                                        fit: BoxFit.fill,
                                        placeholder: (context, url) =>
                                            const Center(
                                                child: SizedBox(
                                                    width: 16,
                                                    height: 16,
                                                    child:
                                                        CircularProgressIndicator(
                                                      strokeWidth: 1,
                                                    ))),
                                        errorWidget: (context, url, error) =>
                                            Icon(
                                          Icons.error,
                                          color:
                                              Theme.of(context).highlightColor,
                                        ),
                                      ),
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
                                      state.products?[index].name ?? "",
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "\$${state.products?[index].regularPrice ?? 0}",
                                          style: latoBMRegularCrossLineStyle(
                                              LightModeColor
                                                  .productRegularPrice.color),
                                          maxLines: 1,
                                        ),
                                        SizedBox(
                                          width: 6.w,
                                        ),
                                        Text(
                                          "\$${state.products?[index].price ?? 0}",
                                          style: robotoBLLBoldStyle(
                                              LightModeColor.black.color),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    RatingBarIndicator(
                                      rating: state.products?[index].ratingCount
                                              ?.toDouble() ??
                                          0,
                                      itemBuilder: (context, index) =>
                                          const Icon(
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
                      ),
                    );
                  }, childCount: state.products?.length),
                );
              }
              return const SliverToBoxAdapter(
                child: SizedBox(),
              );
            }),
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
