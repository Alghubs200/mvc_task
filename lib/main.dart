// import 'dart:html' as prefix;

import 'package:flutter/material.dart';
import 'package:mvc_task/controller/auth_controller.dart';
import 'package:mvc_task/view/screens/auth/login_screen.dart';
import 'package:mvc_task/view/screens/auth/sign_up_screen.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => {Get.put(AuthController())});
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.green[100]),
      title: 'Flutter Demo',
      home: SignUpScreen(),
    );
  }
}
