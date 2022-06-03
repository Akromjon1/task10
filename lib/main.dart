import 'package:amazon/pages/home_page.dart';
import 'package:amazon/pages/sign_in_page.dart';
import 'package:amazon/pages/sign_up_page.dart';
import 'package:amazon/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.deepOrange,
      ),
      home: SplashPage(),
      routes: {
        SplashPage.id: (context)=> SplashPage(),
        HomePage.id: (context)=> HomePage(),
        SignInPage.id: (context)=> SignInPage(),
        SignUpPage.id: (context)=> SignUpPage(),

      },
    );
  }
}
