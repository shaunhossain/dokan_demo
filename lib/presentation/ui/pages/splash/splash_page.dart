import 'package:dokan_demo/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:dokan_demo/presentation/navigation/page_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    context.read<AuthBloc>().add(const AuthEvent.isLogin());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc,AuthState>(
      listener: (context,state){
        if (state.status == AuthStatus.success &&
            state.isAuthenticated == true) {
          context.go(PagesName.homePage.path);
        }
        if (state.status == AuthStatus.error &&
            state.isAuthenticated == false) {
          context.go(PagesName.loginPage.path);
        }
      },
      child: Scaffold(
        body: Container(),
      ),
    );
  }
}
