import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/core/styles.dart';
import 'package:dokan_demo/presentation/ui/widgets/auth/social_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> fromValidationKey = GlobalKey<FormState>();
  late TextEditingController _email;

  late TextEditingController _password;
  bool isObscurePassword = true;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  void obscurePassword() {
    setState(() {
      isObscurePassword = !isObscurePassword;
    });
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
                height: 80.h,
              ),
              SvgPicture.asset(
                "assets/dokan_logo.svg",
                width: 165.w,
                height: 50.h,
                fit: BoxFit.scaleDown,
              ),
              SizedBox(
                height: 70.h,
              ),
              Text(
                "Sign In",
                style: robotoH5Style(Colors.black),
              ),
              SizedBox(
                height: 30.h,
              ),
              Form(
                  key: fromValidationKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        obscureText: isObscurePassword,
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
                          suffixIcon: GestureDetector(
                            onTap: obscurePassword,
                            child: isObscurePassword
                                ? SvgPicture.asset(
                                    "assets/hide_password_icon.svg",
                                    width: 23.w,
                                    height: 20.h,
                                    fit: BoxFit.scaleDown,
                                    color: Theme.of(context)
                                        .inputDecorationTheme
                                        .iconColor,
                                  )
                                : SvgPicture.asset(
                                    "assets/show_password_icon.svg",
                                    width: 23.w,
                                    height: 20.h,
                                    fit: BoxFit.scaleDown,
                                    color: Theme.of(context)
                                        .inputDecorationTheme
                                        .iconColor,
                                  ),
                          ),
                          hintText: "Password",
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
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: robotoBSStyle(Theme.of(context)
                                  .inputDecorationTheme
                                  .hintStyle!
                                  .color!),
                            )),
                      ),
                      SizedBox(
                        height: 50.h,
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
                            "Login",
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
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Create New Account",
                              style:
                                  robotoBLThinStyle(LightModeColor.text.color),
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
