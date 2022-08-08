import 'package:flutter/material.dart';

import '../../../config/app_images.dart';
import 'package:animated_widgets/animated_widgets.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: method2(),
    );
  }
//two ways to design splash screen
  Widget method1() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage(AppImage.BACKGROUND)),
      ),
      child: Center(
          child: Image(
        image: AssetImage(AppImage.LOGO),
      )),
    );
  }

  Widget method2() {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Image(
          // must do this to fit any mobile size
          fit: BoxFit.cover,
          image: AssetImage(AppImage.BACKGROUND),
        ),
        /* external library to animate the logo (scale)
           animated_widgets: ^1.1.0
         */
        ScaleAnimatedWidget.tween(
          scaleEnabled: 1,
          scaleDisabled: 0.0,
          duration: Duration(
              milliseconds: 500,
          ),
          child: Image(
            image: AssetImage(AppImage.LOGO),
          ),
        )
      ],
    );
  }
}
