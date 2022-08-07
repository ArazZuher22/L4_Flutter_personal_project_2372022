import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  @override
  State<LoadingScreen> createState() => _LoadingScreen();
}

class _LoadingScreen extends State<LoadingScreen> {
  // TODO : create full currect design  : done
  // TODO : create future to wait page
  Timer _timer;
  FlutterLogoStyle _logoStyle = FlutterLogoStyle.markOnly;

  _AnimatedFlutterLogoState() {
    _timer = new Timer(const Duration(milliseconds: 400), () {
      setState(() {
        _logoStyle = FlutterLogoStyle.horizontal;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColorPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get more done.',
              style: Styles.headLineStyle1.copyWith(color: Styles.whiteColor),
            ),
            Text(
              'Be happy.',
              style: Styles.headLineStyle1.copyWith(color: Styles.whiteColor),
            ),
            /*
            // Go to Page2 after 5s.
            Future.delayed(const Duration(seconds: 5), () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Screen2()));
            })
            */
          ],
        ),
      ),
    );
  }

  // for waiting screen
  Future waitForFiveSec() async {
    return await Future.delayed(Duration(seconds: 5)).then((value) => true);
  }
}
