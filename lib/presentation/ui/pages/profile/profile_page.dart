
import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/core/styles.dart';
import 'package:dokan_demo/presentation/ui/widgets/profile/custom_expanded_tile.dart';
import 'package:dokan_demo/presentation/ui/widgets/profile/custom_profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<NestedScrollViewState> nestedScrollKey = GlobalKey();

  bool isAccountExpand = false;
  bool isPasswordExpand = false;
  bool isNotificationExpand = false;
  bool isWishListExpand = false;

  final GlobalKey<FormState> fromValidationKey = GlobalKey<FormState>();
  late TextEditingController _userName;
  late TextEditingController _email;

  late TextEditingController _address;
  late TextEditingController _optional;
  late TextEditingController _zipCode;
  bool isObscurePassword = true;

  @override
  void initState() {
    _userName = TextEditingController();
    _email = TextEditingController();
    _address = TextEditingController();
    _optional = TextEditingController();
    _zipCode = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "My Account",
          style: robotoH6Style(LightModeColor.searchMenuIcon.color),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        key: nestedScrollKey,
        slivers: [
          const SliverToBoxAdapter(
            child: CustomProfileHeader(
                imageUrl: "https://images.pexels.com/photos/1926769/pexels-photo-1926769.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2", name: "John Smith", email: "info@johnsmith.com"),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            sliver: SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(22),
                margin: EdgeInsets.only(bottom: 40.h),
                decoration: BoxDecoration(
                  color: LightModeColor.white.color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    CustomExpandedTile(
                      index: 0,
                      onExpansionChanged: (value) {
                        setState(() {
                          isAccountExpand = value;
                        });
                      },
                      isExpand: isAccountExpand,
                      title: Text(
                        "Account",
                        style: robotoBLStyle(LightModeColor.black.color),
                      ),
                      leadingIcon: "assets/profile_icon.svg",
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Form(
                              key: fromValidationKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Email",style: robotoBMMStyle(LightModeColor.activeExpandIcon.color),),
                                  SizedBox(height: 12.h,),
                                  TextFormField(
                                    style: robotoBLStyle(Colors.black),
                                    controller: _email,
                                    keyboardType: TextInputType.emailAddress,
                                    // validator: validateEmail,
                                    decoration: const InputDecoration(
                                      hintText: "youremail@xmail.com",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text("Full Name",style: robotoBMMStyle(LightModeColor.activeExpandIcon.color),),
                                  SizedBox(height: 12.h,),
                                  TextFormField(
                                    style: robotoBLStyle(Colors.black),
                                    controller: _userName,
                                    keyboardType: TextInputType.name,
                                    // validator: validateEmail,
                                    decoration: const InputDecoration(
                                      hintText: "William Bennett",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text("Street Address",style: robotoBMMStyle(LightModeColor.activeExpandIcon.color),),
                                  SizedBox(height: 12.h,),
                                  TextFormField(
                                    style: robotoBLStyle(Colors.black),
                                    controller: _address,
                                    keyboardType: TextInputType.streetAddress,
                                    // validator: validateEmail,
                                    decoration: const InputDecoration(
                                      hintText: "465 Nolan Causeway Suite 079",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text("Apt, Suite, Bldg (optional)",style: robotoBMMStyle(LightModeColor.activeExpandIcon.color),),
                                  SizedBox(height: 12.h,),
                                  TextFormField(
                                    style: robotoBLStyle(Colors.black),
                                    controller: _optional,
                                    keyboardType: TextInputType.text,
                                    // validator: validateEmail,
                                    decoration: const InputDecoration(
                                      hintText: "Unit 512",
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text("Zip Code",style: robotoBMMStyle(LightModeColor.activeExpandIcon.color),),
                                  SizedBox(height: 12.h,),
                                  SizedBox(
                                    width: 86.w,
                                    child: TextFormField(
                                      style: robotoBLStyle(Colors.black),
                                      controller: _zipCode,
                                      keyboardType: TextInputType.number,
                                      // validator: validateEmail,
                                      decoration: const InputDecoration(
                                        hintText: "77017",
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24.h,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: WidgetStateProperty.all(LightModeColor.white.color),
                                          fixedSize: WidgetStateProperty.all(Size(135.w, 50.h)),
                                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(width: 0.5,color: LightModeColor.shadowStroke.color)
                                          )),
                                        ),
                                          onPressed: (){}, child: Text("Cancel",style: latoBLBoldStyle(LightModeColor.cancelButtonText.color),)),
                                      ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor: WidgetStateProperty.all(LightModeColor.saveButton.color),
                                            fixedSize: WidgetStateProperty.all(Size(135.w, 50.h)),
                                            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                            )),
                                          ),
                                          onPressed: (){}, child: Text("Save",style: robotoBLBoldStyle(LightModeColor.white.color)))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 42.h,
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                    Divider(
                      height: 0.5,
                      color: LightModeColor.divider.color,
                    ),
                    CustomExpandedTile(
                      index: 0,
                      onExpansionChanged: (value) {
                        setState(() {
                          isPasswordExpand = value;
                        });
                      },
                      isExpand: isPasswordExpand,
                      title: Text(
                        "Passwords",
                        style: robotoBLStyle(LightModeColor.black.color),
                      ),
                      leadingIcon: 'assets/password_icon.svg',
                      children: [],
                    ),
                    Divider(
                      height: 0.5,
                      color: LightModeColor.divider.color,
                    ),
                    CustomExpandedTile(
                      index: 0,
                      onExpansionChanged: (value) {
                        setState(() {
                          isNotificationExpand = value;
                        });
                      },
                      isExpand: isNotificationExpand,
                      title: Text(
                        "Notification",
                        style: robotoBLStyle(LightModeColor.black.color),
                      ),
                      leadingIcon: 'assets/notification_icon.svg',
                      children: [],
                    ),
                    Divider(
                      height: 0.5,
                      color: LightModeColor.divider.color,
                    ),
                    CustomExpandedTile(
                      index: 0,
                      onExpansionChanged: (value) {
                        setState(() {
                          isWishListExpand = value;
                        });
                      },
                      isExpand: isWishListExpand,
                      title: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "Wishlist ",
                          style: robotoBLStyle(LightModeColor.black.color),
                        ),
                        TextSpan(
                          text: "(00)",
                          style:
                              robotoBLStyle(LightModeColor.profileIcon.color),
                        )
                      ])),
                      leadingIcon: 'assets/wish_list_icon.svg',
                      children: [],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
