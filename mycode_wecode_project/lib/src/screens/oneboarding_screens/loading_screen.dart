import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);
  @override
  State<HomeScreenView> createState() => _HomeScreenView();
}

class _HomeScreenView extends State<HomeScreenView> {
  // TODO : create full currect design  : done 
  // TODO : create future to wait page 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColorPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            

            Text('Get more done.',style: Styles.headLineStyle1,),
            Text('Be happy.',style: Styles.headLineStyle1,),


          ],
        ),
      ),
    );
  }
}
