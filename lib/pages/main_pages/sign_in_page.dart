import 'package:flutter/material.dart';
import 'package:futmitepadi/constants.dart';
import 'package:futmitepadi/basic_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';

import '../../main.dart';

class Sign_In_Page extends StatefulWidget {
  @override
  State<Sign_In_Page> createState() => _Sign_In_PageState();
}

class _Sign_In_PageState extends State<Sign_In_Page> {
  final formkey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String matricnumber;
  late String username;
  late String faculty;

  Future Register() async {
    final isValid = formkey.currentState!.validate();
    if (!isValid) return;

    try {
      final user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(e.message);
    }
    navigatorKey.currentState!.pushNamed('menu_page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formkey,
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
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                  },
                  style: const TextStyle(
                      fontFamily: 'worksans', color: Colors.black),
                  textAlign: TextAlign.left,
                  decoration: kDecorationTextField.copyWith(
                      hintText: 'Type your email'),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (email) =>
                      email != null && !EmailValidator.validate(email)
                          ? 'Enter a valid email'
                          : null,
                ),
              ),
              const SizedBox(height: 2.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (password) =>
                      password != null && password.length < 6
                          ? 'Enter min. 6 characters'
                          : null,
                  obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                  style: const TextStyle(
                      fontFamily: 'worksans', color: Colors.black),
                  textAlign: TextAlign.left,
                  decoration: kDecorationTextField.copyWith(
                      hintText: 'Create a password'),
                ),
              ),
              const SizedBox(height: 2.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                    onChanged: (value) {
                      matricnumber = value;
                    },
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
                  onChanged: (value) {
                    username = value;
                  },
                  style: const TextStyle(
                      fontFamily: 'worksans', color: Colors.black),
                  textAlign: TextAlign.left,
                  decoration: kDecorationTextField.copyWith(
                      hintText: 'Create a username'),
                ),
              ),
              const SizedBox(height: 2.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                    onChanged: (value) {
                      faculty = value;
                    },
                    style: const TextStyle(
                        fontFamily: 'worksans', color: Colors.black),
                    textAlign: TextAlign.left,
                    decoration: kDecorationTextField.copyWith(
                        hintText: 'Your faculty')),
              ),
              const SizedBox(height: 2.0),
              Purpleflatbutton(
                title: 'Register',
                onpressed: () {
                  Register();
                },
              ),
              Flexible(child: const SizedBox(height: 10.0)),
            ],
          ),
        ),
      ),
    );
  }
}
