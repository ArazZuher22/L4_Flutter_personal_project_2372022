import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/widgets/top_circular_view.dart';
import 'package:get/get.dart';
class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);
  @override
  State<HomeScreenView> createState() => _HomeScreenView();
}

class _HomeScreenView extends State<HomeScreenView> {
  // TODO :
  // TODO :

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Column(
        children: [
             
            TopCircularView(headText: 'Lets Get Started',backButton: false,),
            TopCircularView(headText: 'Lets Get Started',backButton: true,),
            

        ],
      )
    );
  }
}
