import 'dart:async';

import 'package:amazon/pages/home_page.dart';
import 'package:amazon/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
class SplashPage extends StatefulWidget {
  static final String id = "splash_page";

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _initTimer(){
      Timer(Duration(seconds: 3),(){
        Navigator.pushReplacementNamed(context, SignInPage.id);
      });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: Colors.white,
        child: Stack(
          children: [
            Center(
              child: Container(
                child: Image.asset('assets/images/ic_logo.png', height: 100, width: 100,),

              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text("From Amazon", style: TextStyle(color: Colors.black, fontSize: 17),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
