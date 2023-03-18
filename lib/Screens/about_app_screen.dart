import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutApp extends StatelessWidget {
  // final String title;

  // AboutApp({required this.title});

  @override
  Widget build(BuildContext context) {
    ModalRoute modalRoute = ModalRoute.of(context)!;

    if (modalRoute != null) {
      Map<String, dynamic> data =
          modalRoute.settings.arguments as Map<String, dynamic>;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(data['title']),
      ),
    );
  }
}
