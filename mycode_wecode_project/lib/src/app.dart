import 'package:flutter/material.dart';
//import 'package:mycode_wecode_project/src/screens/home_screen.dart';
import 'package:mycode_wecode_project/src/screens/login_and_registar_screens/signin_screen.dart';
//import 'package:mycode_wecode_project/src/screens/oneboarding_screens/oneboarding_one_screen.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenView(),
    );
  }
}
