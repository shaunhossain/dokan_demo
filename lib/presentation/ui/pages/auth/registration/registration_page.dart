import 'package:cached_network_image/cached_network_image.dart';
import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/core/styles.dart';
import 'package:dokan_demo/presentation/navigation/page_name.dart';
import 'package:dokan_demo/presentation/ui/widgets/auth/social_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final GlobalKey<FormState> fromValidationKey = GlobalKey<FormState>();
  late TextEditingController _userName;
  late TextEditingController _email;

  late TextEditingController _password;
  late TextEditingController _confirmPassword;
  bool isObscurePassword = true;

  @override
  void initState() {
    _userName = TextEditingController();
    _email = TextEditingController();
    _confirmPassword = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 33.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.h,
              ),
              SizedBox(
                width: double.maxFinite,
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Card(
                              shape: const CircleBorder(),
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                      radius: 50,
                                      backgroundColor: Colors.white,
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: ClipOval(
                                          child: CachedNetworkImage(
                                            imageUrl:
                                            "",
                                            fit: BoxFit.cover,
                                            placeholder: (context, url) =>
                                            const Center(
                                                child: SizedBox(
                                                    width: 16,
                                                    height: 16,
                                                    child:
                                                    CircularProgressIndicator(
                                                      strokeWidth: 1,
                                                    ))),
                                            errorWidget:
                                                (context, url, error) =>
                                                Icon(
                                                  Icons.error,
                                                  color: Theme.of(context)
                                                      .highlightColor,
                                                ),
                                          ),
                                        ),
                                      )),
                                  Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: InkWell(
                                      onTap: () {
                                       // chooseImage();
                                      },
                                      child: Container(
                                        width: 34.w,
                                        height: 34.h,
                                        padding: const EdgeInsets.all(4),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle, // circular shape
                                          gradient: LinearGradient(
                                            colors: [
                                              LightModeColor.linerFirst.color,
                                              LightModeColor.linerSecond.color,
                                            ],
                                          ),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.grey,
                                              offset: Offset(0.0, 1.0), //(x,y)
                                              blurRadius: 6.0,
                                            ),
                                          ],
                                        ),
                                        child: SvgPicture.asset(
                                            'assets/add_photo_icon.svg'),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Form(
                  key: fromValidationKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        style: robotoBLStyle(Colors.black),
                        controller: _userName,
                        keyboardType: TextInputType.name,
                        // validator: validateEmail,
                        decoration: InputDecoration(
                          prefixIcon: SvgPicture.asset(
                            "assets/user_name_icon.svg",
                            width: 20.w,
                            height: 16.h,
                            fit: BoxFit.scaleDown,
                            color: Theme.of(context)
                                .inputDecorationTheme
                                .iconColor,
                          ),
                          hintText: "Name",
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        style: robotoBLStyle(Colors.black),
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        // validator: validateEmail,
                        decoration: InputDecoration(
                          prefixIcon: SvgPicture.asset(
                            "assets/email_icon.svg",
                            width: 20.w,
                            height: 16.h,
                            fit: BoxFit.scaleDown,
                            color: Theme.of(context)
                                .inputDecorationTheme
                                .iconColor,
                          ),
                          hintText: "Email",
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        //obscureText: isObscurePassword,
                        controller: _password,
                        keyboardType: TextInputType.visiblePassword,
                        //validator: validatePassword,
                        style: robotoBLStyle(Colors.black),
                        decoration: InputDecoration(
                          prefixIcon: SvgPicture.asset(
                            "assets/password_icon.svg",
                            width: 19.w,
                            height: 20.h,
                            fit: BoxFit.scaleDown,
                            color: Theme.of(context)
                                .inputDecorationTheme
                                .iconColor,
                          ),
                          hintText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        //obscureText: isObscurePassword,
                        controller: _confirmPassword,
                        keyboardType: TextInputType.visiblePassword,
                        //validator: validatePassword,
                        style: robotoBLStyle(Colors.black),
                        decoration: InputDecoration(
                          prefixIcon: SvgPicture.asset(
                            "assets/password_icon.svg",
                            width: 19.w,
                            height: 20.h,
                            fit: BoxFit.scaleDown,
                            color: Theme.of(context)
                                .inputDecorationTheme
                                .iconColor,
                          ),
                          hintText: "Confirm Password",
                        ),
                      ),
                      Visibility(
                          visible: false,
                          child: Text(
                            "error",
                            style: latoBLStyle(Theme.of(context)
                                .inputDecorationTheme
                                .errorStyle!
                                .color!),
                          )),
                      SizedBox(
                        height: 75.h,
                      ),
                      MaterialButton(
                          color: LightModeColor.button.color,
                          splashColor: LightModeColor.button.color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minWidth: double.maxFinite,
                          height: 60.h,
                          onPressed: () {},
                          child: Text(
                            "Sign Up",
                            style: robotoBLMediumStyle(Colors.white),
                          )),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialButton(
                            onTap: () {},
                            icon: "assets/fb_icon.png",
                          ),
                          SizedBox(
                            width: 14.w,
                          ),
                          SocialButton(
                            onTap: () {},
                            icon: "assets/google_icon.png",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text.rich(TextSpan(
                          children: [
                            TextSpan(
                              text: "Already have an account?",
                              style: robotoBLThinStyle(LightModeColor.text.color),
                            ),
                            TextSpan(
                              text: " Login",
                              style: robotoBLBoldStyle(LightModeColor.loginTextButton.color),
                              recognizer: TapGestureRecognizer()..onTap = () {
                               context.push(PagesName.loginPage.path);
                              },
                            )
                          ]
                        )),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
