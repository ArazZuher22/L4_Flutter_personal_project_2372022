import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Text('hi'),
        ],
      ),
    );
  }
}
