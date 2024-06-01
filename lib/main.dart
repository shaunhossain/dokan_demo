import 'package:dokan_demo/injection.dart';
import 'package:dokan_demo/presentation/ui/my_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}
