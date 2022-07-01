import 'package:flutter/material.dart';
import 'package:signup_login_pages/Screens/components/background.dart';
import 'package:signup_login_pages/Screens/components/roundButton.dart';
import 'package:signup_login_pages/Screens/loginScreen.dart';
import 'package:signup_login_pages/Screens/signupScreen.dart';
import 'package:signup_login_pages/constants.dart';
import 'components/roundInputButton.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                  Text('Signup',style: TextStyle(color: kprimaryColor,),),
                  Image.asset('assets/icons/signup.png'),
                  SizedBox(height: 20,),
                  RoundInputButton(hintText: 'Email',icon: Icon(Icons.person,color: kprimaryColor,),obscureText: null),
                  SizedBox(height: 20,),
                  RoundInputButton(icon: Icon(Icons.lock,color: kprimaryColor,), hintText: 'Password',obscureText: true),
                  SizedBox(height: 20,),
                  RoundButton(text: 'Signup', textColor: Colors.white, buttonColor: kprimaryColor, press: (){}),
                  SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children:[Text("Already have an account ? "),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return LoginScreen();
                            }));
                          },
                          child: Text('Login',style: TextStyle(color: Colors.blue[700]),),
                        )]),
                ],
              ),
            )),
      ),
    );;
  }
}
