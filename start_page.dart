import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:deb/modules/login/loginscreen.dart';
import 'package:flutter/material.dart';

class splashPage extends StatefulWidget {
  static const String routeName = 'Splash Page';

  const splashPage({super.key});
  @override
  State<splashPage> createState() => _splashPageState();
}
class _splashPageState extends State<splashPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Image.asset('assets/images/img_photo2023051.png'),
          splashIconSize: 300,
          duration: 300,
          //splashTransition: SplashTransition.sizeTransition,
          nextScreen: LoginScreen(),
        ),
      ),
    );
  }
}
