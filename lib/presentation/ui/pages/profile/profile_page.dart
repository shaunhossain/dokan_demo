import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/core/cache/auth_cache_manager.dart';
import 'package:dokan_demo/core/styles.dart';
import 'package:dokan_demo/core/validatator/validator.dart';
import 'package:dokan_demo/presentation/bloc/user_profile_bloc/user_profile_bloc.dart';
import 'package:dokan_demo/presentation/ui/widgets/auth/custom_login_loader_indicator.dart';
import 'package:dokan_demo/presentation/ui/widgets/loading_indicator.dart';
import 'package:dokan_demo/presentation/ui/widgets/profile/custom_expanded_tile.dart';
import 'package:dokan_demo/presentation/ui/widgets/profile/custom_profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<NestedScrollViewState> nestedScrollKey = GlobalKey();

  String? _userEmail;

  bool isAccountExpand = false;
  bool isPasswordExpand = false;
  bool isNotificationExpand = false;
  bool isWishListExpand = false;

  final GlobalKey<FormState> fromValidationKey = GlobalKey<FormState>();
  late TextEditingController _userName;
  late TextEditingController _firstName;
  late TextEditingController _lastName;
  late TextEditingController _email;

  late TextEditingController _address;
  late TextEditingController _optional;
  late TextEditingController _zipCode;
  bool isObscurePassword = true;

  @override
  void initState() {
    context
        .read<UserProfileBloc>()
        .add(const UserProfileEvent.requestProfileInfo());
    _userName = TextEditingController();
    _firstName = TextEditingController();
    _lastName = TextEditingController();
    _email = TextEditingController();
    _address = TextEditingController();
    _optional = TextEditingController();
    _zipCode = TextEditingController();
    _getUserMail();
    super.initState();
  }

  void _getUserMail() async {
    _userEmail = await AuthCacheManager.getUserEmail();
    _email.text = _userEmail ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserProfileBloc, UserProfileState>(
      listener: (context, state) {
        if (state.status == UserProfileStatus.success) {
          _userName.text = state.profile?.name ?? "";
          _address.text = state.profile?.description ?? "";
        }
      },
      child: Scaffold(
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
            BlocBuilder<UserProfileBloc, UserProfileState>(
                builder: (context, state) {
              if (state.status == UserProfileStatus.loading) {
                return const SliverPadding(
                  padding: EdgeInsets.all(16.0),
                  sliver: SliverToBoxAdapter(
                    child: LoadingIndicator(),
                  ),
                );
              }
              if (state.status == UserProfileStatus.success) {
                return SliverToBoxAdapter(
                  child: CustomProfileHeader(
                      imageUrl: state.profile?.avatarUrls?.the96 ?? "",
                      name: state.profile?.name ?? "",
                      email: _userEmail ?? ""),
                );
              }
              return const SliverToBoxAdapter();
            }),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Email",
                                      style: robotoBMMStyle(LightModeColor
                                          .activeExpandIcon.color),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    TextFormField(
                                      style: robotoBLStyle(Colors.black),
                                      controller: _email,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: validateEmail,
                                      decoration: const InputDecoration(
                                        hintText: "youremail@xmail.com",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Full Name",
                                      style: robotoBMMStyle(LightModeColor
                                          .activeExpandIcon.color),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    TextFormField(
                                      style: robotoBLStyle(Colors.black),
                                      controller: _userName,
                                      keyboardType: TextInputType.name,
                                      validator: validateName,
                                      decoration: const InputDecoration(
                                        hintText: "William Bennett",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "First Name",
                                      style: robotoBMMStyle(LightModeColor
                                          .activeExpandIcon.color),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    TextFormField(
                                      style: robotoBLStyle(Colors.black),
                                      controller: _firstName,
                                      keyboardType: TextInputType.name,
                                      decoration: const InputDecoration(
                                        hintText: "William",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Last Name",
                                      style: robotoBMMStyle(LightModeColor
                                          .activeExpandIcon.color),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    TextFormField(
                                      style: robotoBLStyle(Colors.black),
                                      controller: _lastName,
                                      keyboardType: TextInputType.name,
                                      decoration: const InputDecoration(
                                        hintText: "Bennett",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Street Address",
                                      style: robotoBMMStyle(LightModeColor
                                          .activeExpandIcon.color),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    TextFormField(
                                      style: robotoBLStyle(Colors.black),
                                      controller: _address,
                                      keyboardType: TextInputType.streetAddress,
                                      decoration: const InputDecoration(
                                        hintText:
                                            "465 Nolan Causeway Suite 079",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Apt, Suite, Bldg (optional)",
                                      style: robotoBMMStyle(LightModeColor
                                          .activeExpandIcon.color),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    TextFormField(
                                      style: robotoBLStyle(Colors.black),
                                      controller: _optional,
                                      keyboardType: TextInputType.text,
                                      decoration: const InputDecoration(
                                        hintText: "Unit 512",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Zip Code",
                                      style: robotoBMMStyle(LightModeColor
                                          .activeExpandIcon.color),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    SizedBox(
                                      width: 86.w,
                                      child: TextFormField(
                                        style: robotoBLStyle(Colors.black),
                                        controller: _zipCode,
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                          hintText: "77017",
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 24.h,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  WidgetStateProperty.all(
                                                      LightModeColor
                                                          .white.color),
                                              fixedSize:
                                                  WidgetStateProperty.all(
                                                      Size(135.w, 50.h)),
                                              shape: WidgetStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      side: BorderSide(
                                                          width: 0.5,
                                                          color: LightModeColor
                                                              .shadowStroke
                                                              .color))),
                                            ),
                                            onPressed: () {},
                                            child: Text(
                                              "Cancel",
                                              style: latoBLBoldStyle(
                                                  LightModeColor
                                                      .cancelButtonText.color),
                                            )),
                                        ElevatedButton(
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  WidgetStateProperty.all(
                                                      LightModeColor
                                                          .saveButton.color),
                                              fixedSize:
                                                  WidgetStateProperty.all(
                                                      Size(135.w, 50.h)),
                                              shape: WidgetStateProperty.all(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              )),
                                            ),
                                            onPressed: () {
                                              if (fromValidationKey
                                                  .currentState!
                                                  .validate()) {
                                                context
                                                    .read<UserProfileBloc>()
                                                    .add(UserProfileEvent
                                                        .editProfileInfo(
                                                            name:
                                                                _userName.text,
                                                            firstName:
                                                                _firstName.text,
                                                            lastName:
                                                                _lastName.text,
                                                            email: _email.text,
                                                            description:
                                                                "${_address.text},${_zipCode.text}"));
                                              }
                                            },
                                          child:BlocBuilder<UserProfileBloc, UserProfileState>(
                                              builder: (context, state) {
                                                if(state.status == UserProfileStatus.loading){
                                                  return const CustomLoginLoaderIndicator();
                                                }
                                                return Text("Save",
                                                    style: robotoBLBoldStyle(
                                                        LightModeColor
                                                            .white.color));
                                              })
                                        )
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
                        children: const [],
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
                        children: const [],
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
                        children: const [],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
