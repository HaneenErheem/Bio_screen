import 'dart:ui';

import 'package:bio_app/Screens/BioScreen.dart';
import 'package:flutter/material.dart';

class launchScreen extends StatefulWidget {
  const launchScreen({Key? key}) : super(key: key);

  @override
  State<launchScreen> createState() => _launchScreenState();
}

class _launchScreenState extends State<launchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Image.asset(
            'images/bg2.PNG',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Wellcome',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Raleway',
                fontSize: 35,
                fontWeight: FontWeight.w700),
          ),
        ),
      ],
    ));
  }
}
