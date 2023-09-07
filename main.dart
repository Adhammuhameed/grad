import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:camera_platform_interface/src/types/camera_description.dart';
import 'package:deb/modules/login/loginscreen.dart';
import 'package:deb/modules/page_two/page_two.dart';
import 'package:deb/modules/startpage/start_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterfire_cli/flutterfire_cli.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late List<CameraDescription> camera;
  final email=TextEditingController();
  final password=TextEditingController();

  //const MyApp({super.key});
  // void navigateNextPage(BuildContext context){
  //   Navigator.of(context).push(MaterialPageRoute(builder: (_){
  //     return page_Two(camera);
  //   }));
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //initialRoute: LoginScreen.routeName,
      //home: LoginScreen(),
      initialRoute: splashPage.routeName,
      debugShowCheckedModeBanner: false,
      routes: {
        splashPage.routeName: (context) =>splashPage()
      },
      home: AnimatedSplashScreen(splash: const splashPage(), nextScreen: LoginScreen()),
    );
  }
}
