import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../screens/home_screen.dart';
import '../screens/menu/favourites_screen.dart';
import '../screens/menu/profile_screen.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class NavigatioinDrawer extends StatelessWidget {
  const NavigatioinDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => InkWell(
    onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProfileScreenView(),
                  ));
    },
    child: Container(
          color: Styles.primaryColor,
          padding: EdgeInsets.only(
            top: AppLayout.getHeight(25),
            bottom: AppLayout.getHeight(25),
            ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 52,
                backgroundColor: Colors.red,
              ),
              Gap(AppLayout.getHeight(12)),
              Text('Sarah Abs',style: Styles.headLineStyle3,),
              Text('Sarach@abs.com',style: Styles.headLineStyle4,)
            ],
          ),
        ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Home'),
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomeScreenView(),
                    ))),
            ListTile(
                leading: const Icon(Icons.favorite_outline),
                title: const Text('Favourites'),
                onTap: () {
                  // close navigation drawer before
                  Navigator.pop(context);

                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FavouritesScreenView(),
                  ));
                }),
            ListTile(
                leading: const Icon(Icons.workspaces_outline),
                title: const Text('Workflow'),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.update),
                title: const Text('Updates'),
                onTap: () {}),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Plugins'),
                onTap: () {}),
            ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Notifications'),
                onTap: () {}),
          ],
        ),
      );
}
