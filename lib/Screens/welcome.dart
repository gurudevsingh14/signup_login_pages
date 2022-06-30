import 'package:flutter/material.dart';
import 'package:signup_login_pages/Screens/components/roundButton.dart';
import 'package:signup_login_pages/Screens/loginScreen.dart';
import 'package:signup_login_pages/Screens/signupScreen.dart';
import 'package:signup_login_pages/constants.dart';
import 'components/background.dart';
class Welcome extends StatelessWidget {
  const Welcome({Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Edu',style: TextStyle(fontSize: 16,
                  fontFamily: 'roboto', color: kprimaryColor,),),
            SizedBox(height: 20),
            Image.asset('assets/icons/chat.png',width: 300,),
            SizedBox(height: 20),
            RoundButton(text:'Login',textColor: Colors.white,buttonColor: kprimaryColor,
            press: (){Navigator.push(context, MaterialPageRoute(builder: (context){
              return LoginScreen();
            }));},),
            SizedBox(height: 20),
            RoundButton(text: 'Signup',textColor: Colors.black, buttonColor: kPrimaryLightColor,
                press: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignupScreen();
                }));})
          ],
        ));
  }
}

