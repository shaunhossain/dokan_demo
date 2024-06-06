import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/core/cache/auth_cache_manager.dart';
import 'package:dokan_demo/core/filter_type.dart';
import 'package:dokan_demo/core/styles.dart';
import 'package:dokan_demo/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:dokan_demo/presentation/bloc/trigger_bottom_sheet_cubit/trigger_bottom_sheet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShortByBottomView extends StatefulWidget {
  const ShortByBottomView({super.key, required this.filterList});
  final List<FilterType> filterList;

  @override
  State<ShortByBottomView> createState() => _ShortByBottomViewState();
}

class _ShortByBottomViewState extends State<ShortByBottomView> {
  String? selectedRadio;
  @override
  void initState() {
    selectedRadio = widget.filterList.first.action;
    getSaveFilterType();
    super.initState();
  }

  void getSaveFilterType() async {
    String? type = await AuthCacheManager.getFilterType();
    if (type != null && type != "") {
      setState(() {
        selectedRadio = type;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.48,
      minChildSize: 0.2,
      maxChildSize: 0.48,
      expand: false,
      builder: (_, controller) {
        return Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Filter",
                style: robotoBLBoldStyle(Colors.black),
              ),
              Column(
                children: widget.filterList.map((item) {
                  return CheckboxListTile(
                    value: selectedRadio == item.action,
                    contentPadding: EdgeInsets.zero,
                    controlAffinity: ListTileControlAffinity.leading,
                    activeColor: LightModeColor.linerFirst.color,
                    visualDensity: const VisualDensity(
                        horizontal: VisualDensity.minimumDensity,
                        vertical: VisualDensity.minimumDensity),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = item.action;
                        context
                            .read<ProductBloc>()
                            .add(ProductEvent.filterProduct(name: item.action));
                      });
                    },
                    title: Text(item.title),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(LightModeColor.white.color),
                        fixedSize: WidgetStateProperty.all(Size(135.w, 50.h)),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                width: 0.4,
                                color: LightModeColor.shadowStroke.color))),
                      ),
                      onPressed: () {
                        context.read<TriggerBottomSheetCubit>().closeSheet();
                      },
                      child: Text(
                        "Cancel",
                        style: latoBLBoldStyle(
                            LightModeColor.cancelButtonText.color),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            LightModeColor.saveButton.color),
                        fixedSize: WidgetStateProperty.all(Size(135.w, 50.h)),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      onPressed: () {
                        Future.delayed(Duration.zero, () {
                          AuthCacheManager.setFilterType(
                              action: selectedRadio ?? "");
                        }).whenComplete(() {
                          context.read<TriggerBottomSheetCubit>().closeSheet();
                        });
                      },
                      child: Text("Save",
                          style: robotoBLBoldStyle(LightModeColor.white.color)))
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        );
      },
    );
  }
}
