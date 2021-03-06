import 'package:flutter/material.dart';
import 'package:note_that/Screens/Welcome/Login/login_screen.dart';
import 'package:note_that/Screens/Welcome/Signup/signup_screen.dart';
import 'package:note_that/components/or_divider.dart';
import 'package:note_that/components/rounded_button.dart';
import 'package:note_that/components/social_icon.dart';
import 'package:note_that/constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This provides us with total height and width of the screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "note that",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                fontStyle: FontStyle.italic
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Image.asset(
              "assets/images/diary.jpg",
              height: size.height * 0.4,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
