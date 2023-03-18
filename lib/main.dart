import 'package:bio_app/Screens/BioScreen.dart';
import 'package:bio_app/Screens/about_app_screen.dart';
import 'package:bio_app/Screens/launch_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: launchScreen(),
      initialRoute: '/launch_screen',
      routes: {
        //route name  :              widget builder
        '/launch_screen': (context) => launchScreen(),
        '/home_screen': (context) => BioScreen(),
        '/about_app': (context) => AboutApp()
      },
    );
  }
}
