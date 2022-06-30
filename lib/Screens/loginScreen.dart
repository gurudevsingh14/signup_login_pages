import 'dart:io';

import 'package:flutter/material.dart';
import 'package:signup_login_pages/Screens/components/background.dart';
import 'package:signup_login_pages/Screens/components/roundButton.dart';
import 'package:signup_login_pages/constants.dart';
import 'components/roundInputButton.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: kprimaryColor,
        body: Background(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login',style: TextStyle(color: kprimaryColor,),),
                  Image.asset('assets/icons/login.png'),
                  SizedBox(height: 20,),
                  RoundInputButton(hintText: 'Email',icon: Icon(Icons.person,color: kprimaryColor,),obscureText: null),
                  SizedBox(height: 20,),
                  RoundInputButton(icon: Icon(Icons.lock,color: kprimaryColor,), hintText: 'Password',obscureText: true),
                  SizedBox(height: 20,),
                  RoundButton(text: 'Login', textColor: Colors.white, buttonColor: kprimaryColor, press: (){}),
                  SizedBox(height: 20,),
                  Text("Don't have an Account?"),
                ],
              ),
            )),
      ),
    );

    return  Material(
      color: kprimaryColor,
      child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login',style: TextStyle(color: kprimaryColor,),),
            Image.asset('assets/icons/login.png'),
            SizedBox(height: 20,),
            RoundInputButton(hintText: 'Email',icon: Icon(Icons.person,color: kprimaryColor,),obscureText: null),
            SizedBox(height: 20,),
            RoundInputButton(icon: Icon(Icons.lock,color: kprimaryColor,), hintText: 'Password',obscureText: true),
            SizedBox(height: 20,),
            RoundButton(text: 'Login', textColor: Colors.white, buttonColor: kprimaryColor, press: (){}),
            SizedBox(height: 20,),
            Text("Don't have an Account?"),
          ],
      )),
    );
  }
}
