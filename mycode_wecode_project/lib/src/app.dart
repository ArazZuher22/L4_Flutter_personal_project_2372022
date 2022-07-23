import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/screens/home_screen.dart';

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
