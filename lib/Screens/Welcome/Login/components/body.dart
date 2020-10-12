import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:note_that/Screens/Welcome/Login/components/background.dart';
import 'package:note_that/components/already_have_an_account_check.dart';
import 'package:note_that/components/rounded_button.dart';
import 'package:note_that/components/rounded_input_field.dart';
import 'package:note_that/components/rounded_password_field.dart';
import 'package:note_that/components/text_field_container.dart';
import 'package:note_that/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontStyle: FontStyle.italic
            ),
          ),
          Image.asset(
            "assets/images/diary.jpg",
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(),
        ],
      ),
    );
  }
}




