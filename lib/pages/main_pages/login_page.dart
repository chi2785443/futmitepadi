import 'package:flutter/material.dart';
import 'package:futmitepadi/constants.dart';
import 'package:futmitepadi/basic_widgets.dart';

class login_Page extends StatelessWidget {
  const login_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Flexible(
              child: Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: Image(
                  image: AssetImage('images/login_logo.png'),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                style: const TextStyle(
                    fontFamily: 'worksans', color: Colors.black),
                textAlign: TextAlign.center,
                decoration: kDecorationTextField.copyWith(hintText: 'Username'),
              ),
            ),
            const SizedBox(height: 3.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                style: const TextStyle(
                    fontFamily: 'worksans', color: Colors.black),
                textAlign: TextAlign.center,
                decoration: kDecorationTextField.copyWith(hintText: 'Password'),
              ),
            ),
            const SizedBox(height: 2.0),
            Purpleflatbutton(
                title: 'log in',
                onpressed: () {
                  Navigator.pushNamed(context, 'menu_page');
                })
          ],
        ),
      ),
    );
  }
}
