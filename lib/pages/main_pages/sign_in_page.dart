import 'package:flutter/material.dart';
import 'package:futmitepadi/constants.dart';
import 'package:futmitepadi/basic_widgets.dart';

class Sign_In_Page extends StatelessWidget {
  const Sign_In_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Container(
                child: const Padding(
                  padding: EdgeInsets.only(left: 60, right: 60, top: 10),
                  child: Image(
                    image: AssetImage('images/sign_in.png'),
                  ),
                ),
              ),
            ),
            Flexible(child: const SizedBox(height: 10.0)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                style: const TextStyle(
                    fontFamily: 'worksans', color: Colors.black),
                textAlign: TextAlign.left,
                decoration:
                    kDecorationTextField.copyWith(hintText: 'Type your email'),
              ),
            ),
            const SizedBox(height: 2.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                  style: const TextStyle(
                      fontFamily: 'worksans', color: Colors.black),
                  textAlign: TextAlign.left,
                  decoration: kDecorationTextField.copyWith(
                      hintText: 'Create a username')),
            ),
            const SizedBox(height: 2.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                  style: const TextStyle(
                      fontFamily: 'worksans', color: Colors.black),
                  textAlign: TextAlign.left,
                  decoration: kDecorationTextField.copyWith(
                      hintText: 'Your matric number')),
            ),
            const SizedBox(height: 2.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                style: const TextStyle(
                    fontFamily: 'worksans', color: Colors.black),
                textAlign: TextAlign.left,
                decoration: kDecorationTextField.copyWith(
                    hintText: 'Create new password'),
              ),
            ),
            const SizedBox(height: 2.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                  style: const TextStyle(
                      fontFamily: 'worksans', color: Colors.black),
                  textAlign: TextAlign.left,
                  decoration:
                      kDecorationTextField.copyWith(hintText: 'Your faculty')),
            ),
            const SizedBox(height: 2.0),
            Purpleflatbutton(
              title: 'Register',
              onpressed: () {
                Navigator.pushNamed(context, 'menu_page');
              },
            ),
            Flexible(child: const SizedBox(height: 10.0)),
          ],
        ),
      ),
    );
  }
}
