import 'dart:ui';

import 'package:bio_app/Screens/about_app_screen.dart';
import 'package:bio_app/widgets/bio_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BioScreen extends StatefulWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  State<BioScreen> createState() => _BioScreenState();
}

class _BioScreenState extends State<BioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
//-----------------AppBar---------------------
      appBar: AppBar(
        // centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Bio App',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
          ),
        ),
        actionsIconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () {
                Navigator.pushNamed(context, '/about_app',
                    arguments: {'title', 'AboutApp'});

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => AboutApp(
                //               title: 'About App',
                //             )));
              })
        ],
      ),

      //-------------------------body-------------------
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Image.asset(
              "images/bg1.JPG",
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/haneen.JPG'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Eng.Haneen Erheem',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 19),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Flutter developer - Google',
                style: TextStyle(
                    letterSpacing: 1, color: Colors.black45, fontSize: 15),
              ),
              const Divider(
                color: Colors.black54,
                thickness: 1,
                height: 30,
                indent: 40,
                endIndent: 40,
              ),
              BioCard(
                leadingIcon: Icons.email,
                Title: 'Email',
                subTitle: 'Haneener10@gmail.com',
                TrailingIcon: Icons.send,
                marginBottom: 20,
                onPressed: () {},
              ),
              BioCard(
                leadingIcon: Icons.phone_android,
                Title: 'Phone Number',
                subTitle: '+970-597-908-268',
                TrailingIcon: Icons.phone,
                marginBottom: 20,
                onPressed: () {},
              ),
              BioCard(
                leadingIcon: Icons.facebook,
                Title: 'Facebook',
                subTitle: 'Haneen erheem',
                TrailingIcon: Icons.ads_click,
                onPressed: () {},
              ),
              Spacer(),
//--------------------1------------------
              // RichText(
              //     text: TextSpan(text: 'BioApp - ', children: [
              //   TextSpan(
              //       text: 'Pallancer', style: TextStyle(color: Colors.blue))
              // ])),

              //---------------------2-------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Delete my bio -'),
                  TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            'Are You sure?',
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.pink,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(seconds: 2),
                          elevation: 8,
                          margin: EdgeInsets.all(15),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {},
                            textColor: Colors.yellow,
                          ),
                        ));
                      },
                      child: Text(
                        'Delete',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              )

              //-------------3---------------------------
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 10),
              //   child: Text('flutter 2022'),
              // )

              ,
              SizedBox(
                height: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}
