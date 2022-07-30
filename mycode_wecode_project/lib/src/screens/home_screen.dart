import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mycode_wecode_project/src/screens/menu/favourites_screen.dart';
import 'package:mycode_wecode_project/src/screens/menu/profile_screen.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

import '../views/bottom_bar_view.dart';
import '../views/menu_navigation_view.dart';

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
    return Scaffold(
      appBar: AppBar(),
      drawer: NavigatioinDrawer(),
      body: Column(
        children: [
          Text('hi'),

          //BottomNavBarV2(),
        ],

      ),
      bottomNavigationBar: BottomNavBarV2(),
    );
  }
}
