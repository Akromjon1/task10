import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:amazon/pages/sign_in_page.dart';

import 'home_page.dart';
class SignUpPage extends StatefulWidget {
  static final String id = "sign_up_page";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  _doSignUp(){
    String email = _emailController.text;
    String password = _passwordController.text;
    String name = _nameController.text;
    if(email.isNotEmpty && password.isNotEmpty && name.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInUp( duration: Duration(milliseconds: 250),
                child: Text("Amazon",style: TextStyle(fontSize: 45, fontFamily: 'Billabong',),),
              ),

              FadeInUp(
                duration:Duration(milliseconds: 400),
                child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: _nameController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),),

              FadeInUp(
                duration:Duration(milliseconds: 550),
                child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: _emailController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),),

              FadeInUp(duration:Duration(milliseconds: 700),
                child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),),

              FadeInUp(duration:Duration(milliseconds: 850),
                child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                width: double.infinity,
                child: FlatButton(
                  color: Colors.deepOrange,
                  onPressed: (){
                    _doSignUp();
                  },
                  textColor: Colors.white,
                  child: Text("Sign up", style: TextStyle(fontSize: 16, ),),

                ),
              ),),

              FadeInUp(duration:Duration(milliseconds: 1000),
                child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Already have an account",style: TextStyle(fontSize: 16, color: Colors.grey,),),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap:(){
                        Navigator.pushNamed(context, SignInPage.id);
                      },
                      child: Text("Sign in", style: TextStyle(color: Colors.black,
                          fontSize: 16)),

                    ),
                  ],
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

