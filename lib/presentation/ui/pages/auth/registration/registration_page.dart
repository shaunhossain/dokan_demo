import 'package:cached_network_image/cached_network_image.dart';
import 'package:dokan_demo/core/app_colors.dart';
import 'package:dokan_demo/core/styles.dart';
import 'package:dokan_demo/core/validatator/validator.dart';
import 'package:dokan_demo/presentation/bloc/registation_bloc/registration_bloc.dart';
import 'package:dokan_demo/presentation/navigation/page_name.dart';
import 'package:dokan_demo/presentation/ui/widgets/auth/custom_login_loader_indicator.dart';
import 'package:dokan_demo/presentation/ui/widgets/auth/social_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            registered: (value, response) {
              if (value == true) {
                context.go(PagesName.loginPage.path);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Theme.of(context).primaryColorLight,
                    content: Text(response?.message ?? "",
                        style: latoBMRegularStyle(
                            Theme.of(context).highlightColor))));
              }
            });
      },
      child: Scaffold(
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
                  width: 120.w,
                  height: 120.h,
                  child: Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.grey,
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: ClipOval(
                                child: CachedNetworkImage(
                                  imageUrl: "",
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => Center(
                                      child: SizedBox(
                                          width: 16.w,
                                          height: 16.h,
                                          child:
                                              const CircularProgressIndicator(
                                            strokeWidth: 1,
                                          ))),
                                  errorWidget: (context, url, error) =>
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
                      Positioned(
                        right: 10,
                        bottom: 10,
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
                            child:
                                SvgPicture.asset('assets/add_photo_icon.svg'),
                          ),
                        ),
                      )
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
                          validator: validateName,
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
                            hintText: "User Name",
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        TextFormField(
                          style: robotoBLStyle(Colors.black),
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          validator: validateEmail,
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
                          controller: _password,
                          keyboardType: TextInputType.visiblePassword,
                          validator: validatePassword,
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
                          controller: _confirmPassword,
                          keyboardType: TextInputType.visiblePassword,
                          validator: validatePassword,
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
                        BlocBuilder<RegistrationBloc, RegistrationState>(
                            builder: (context, state) {
                          return state.maybeWhen(isError: (error) {
                            return Visibility(
                                visible: true,
                                child: Text(
                                  error.message ?? "",
                                  style: latoBLStyle(Theme.of(context)
                                      .inputDecorationTheme
                                      .errorStyle!
                                      .color!),
                                ));
                          }, orElse: () {
                            return Visibility(
                                visible: false,
                                child: Text(
                                  "error",
                                  style: latoBLStyle(Theme.of(context)
                                      .inputDecorationTheme
                                      .errorStyle!
                                      .color!),
                                ));
                          });
                        }),
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
                          onPressed: () {
                            if (fromValidationKey.currentState!.validate()) {
                              context.read<RegistrationBloc>().add(
                                  RegistrationEvent.signUp(
                                      userName: _userName.text,
                                      email: _email.text,
                                      password: _password.text,
                                      confirmPassword: _confirmPassword.text));
                            }
                          },
                          child:
                              BlocBuilder<RegistrationBloc, RegistrationState>(
                                  builder: (context, state) {
                            return state.maybeWhen(isLoading: () {
                              return const CustomLoginLoaderIndicator();
                            }, isError: (error) {
                              return Text(
                                "Sign Up",
                                style: robotoBLMediumStyle(Colors.white),
                              );
                            }, orElse: () {
                              return Text(
                                "Sign Up",
                                style: robotoBLMediumStyle(Colors.white),
                              );
                            });
                          }),
                        ),
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
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                              text: "Already have an account?",
                              style:
                                  robotoBLThinStyle(LightModeColor.text.color),
                            ),
                            TextSpan(
                              text: " Login",
                              style: robotoBLBoldStyle(
                                  LightModeColor.loginTextButton.color),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  context.push(PagesName.loginPage.path);
                                },
                            )
                          ])),
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
      ),
    );
  }
}
