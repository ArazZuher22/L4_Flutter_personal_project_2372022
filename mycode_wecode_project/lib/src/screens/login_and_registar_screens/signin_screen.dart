
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';
import 'package:mycode_wecode_project/src/utils/app_layout.dart';
import 'package:mycode_wecode_project/src/views/top_circular_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/primary_button_widget.dart';
import '../../widgets/secondary_button_widget.dart';
import '../../widgets/text_field_widget.dart';
class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);
  @override
  State<HomeScreenView> createState() => _HomeScreenView();
}

class _HomeScreenView extends State<HomeScreenView> {
  // TODO :
  // TODO :
  TextEditingController emailOrNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Column(
        children: [
             
            TopCircularView(headText: 'Lets Get Started',backButton: false,),
            
            Gap(AppLayout.getHeight(10)),
            Text('Sign In',style: Styles.headLineStyle2,),
            Gap(AppLayout.getHeight(50)),
            TextFieldWidget(
              labelText: "Email or No.Phone",
              controllerTextField: emailOrNumber,
              iconTextField: Icon(Icons.email),
            ),
            Gap(AppLayout.getHeight(20)),
            TextFieldWidget(
              labelText: "Password",
              controllerTextField: password,
              iconTextField: Icon(Icons.lock),
            ),
            Gap(AppLayout.getHeight(25)),
            Text('Forgout Password',style: Styles.headLineStyle5.copyWith(color: Styles.primaryColor),),
            Gap(AppLayout.getHeight(20)),
            PrimaryButtonWidget(buttonText: "Sign In",),
            Gap(AppLayout.getHeight(30)),
            Text('or',style: Styles.headLineStyle3.copyWith(color: Styles.primaryColor,fontWeight: FontWeight.normal),),
            Gap(AppLayout.getHeight(20)),
            SecondaryButtonWidget(buttonText: "Sign With Google",buttonIcon: Icon(Icons.phone),),
            Gap(AppLayout.getHeight(20)),
            SecondaryButtonWidget(buttonText: "Sign With Phone Number",buttonIcon: Icon(Icons.phone)),
            Gap(AppLayout.getHeight(35)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have Account ? ",style: Styles.textStyleSmall.copyWith(color: Styles.primaryColor)),
                Text("Sign Up ",style: Styles.headLineStyle5.copyWith(color:Styles.secondaryColor),),
              ],
            ),
            Gap(AppLayout.getHeight(20)),
        ],
      )
    );
  }
  
}
