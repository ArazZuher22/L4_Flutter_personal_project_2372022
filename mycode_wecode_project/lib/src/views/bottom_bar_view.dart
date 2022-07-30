import 'package:flutter/material.dart';
import 'package:mycode_wecode_project/src/utils/app_styles.dart';
// https://www.youtube.com/watch?v=1ToqYMSnNhA

//https://github.com/retroportalstudio/flutter_bnb_v2/blob/master/lib/main.dart



class BottomNavBarV2 extends StatefulWidget {
  @override
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.3,
                    child: FloatingActionButton(
                        backgroundColor: Styles.primaryColor,
                        child: Icon(size:45,Icons.add),
                        elevation: 0.1,
                        onPressed: () {}),
                    //Icon(Icons.shopping_basket)
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.home,
                            color: currentIndex == 0
                                ? Colors.orange
                                : Colors.grey.shade400,
                          ),
                          onPressed: () {
                            setBottomBarIndex(0);
                          },
                          splashColor: Colors.white,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.restaurant_menu,
                              color: currentIndex == 1
                                  ? Colors.orange
                                  : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(1);
                            }),
                        Container(
                          width: size.width * 0.20,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.bookmark,
                              color: currentIndex == 2
                                  ? Colors.orange
                                  : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(2);
                            }),
                        IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: currentIndex == 3
                                  ? Colors.orange
                                  : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(3);
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      );
    
      /*

      AppBar(
    toolbarHeight:MediaQuery.of(context).size.height/4,
    leading: Container(),
    shape: RoundedRectangleBorder(
      borderRadius: new BorderRadius.vertical(
        bottom: new Radius.elliptical(SizeConfig.screenWidth, 56.0),
      ),
    ),
  ),
  */

  /*

  Container(
    height: 200.0,
    decoration: new BoxDecoration(
      color: Colors.orange,
      boxShadow: [
        new BoxShadow(blurRadius: 40.0)
      ],
      borderRadius: new BorderRadius.vertical(
          bottom: new Radius.elliptical(
              MediaQuery.of(context).size.width, 100.0)),
    ),
  ),

  */
      
    
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  /*
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    // point 1 2    3
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    // point 2 4    5
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 0);
    path.arcToPoint(Offset(size.width * 0.60, 0),
        radius: Radius.circular(40.0));
    // point 6 8    7
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    // point 8 10    9
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }
*/

  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();

    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 10);
    path.arcToPoint(
      Offset(size.width * 0.60, 10),
      radius: Radius.circular(20.0),
      clockwise: true,
    );
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
