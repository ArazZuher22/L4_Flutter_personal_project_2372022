import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/screens/home_screen.dart';
import 'package:mycode_wecode_project/src/screens/login_and_registar_screens/signin_screen.dart';
import 'package:mycode_wecode_project/src/screens/login_and_registar_screens/signup_email_screen.dart';
import 'package:mycode_wecode_project/src/screens/oneboarding_screens/loading_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
      routes: {
        '/signIn' :(context)=>SignInScreen(),
        '/signUp' :(context)=>SignUpEmailScreen(),
        '/loading':(context)=>LoadingScreen(),
      },
    );
  }
}
