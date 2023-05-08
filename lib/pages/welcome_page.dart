import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class Welcome_Page extends StatelessWidget {
  const Welcome_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Futmitepadi',
                  style: TextStyle(
                    letterSpacing: 5.0,
                    fontFamily: 'worksansbold',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple.shade800,
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: MaterialButton(
                  elevation: 10.0,
                  onPressed: () {
                    Navigator.pushNamed(context, 'login_page');
                  },
                  height: 40,
                  color: Colors.purple.shade700,
                  child: const Center(
                    child: Text(
                      'log in',
                      style: TextStyle(
                          fontFamily: 'worksansbold',
                          letterSpacing: 1.50,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              // pushbottons(),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: MaterialButton(
                  elevation: 10.0,
                  onPressed: () {
                    Navigator.pushNamed(context, 'sign_in_page');
                  },
                  height: 40,
                  color: Colors.purple.shade700,
                  child: const Center(
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          fontFamily: 'worksansbold',
                          letterSpacing: 1.50,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
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
