import 'package:flutter/material.dart';

class login_Page extends StatelessWidget {
  const login_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Image(
                image: AssetImage('images/login_logo.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              style: const TextStyle(
                fontFamily: 'worksansbold',
              ),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple.shade700,
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple.shade700,
                    width: 2.0,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                hintText: 'Username',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple.shade700,
                    width: 5.0,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 2.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              style: const TextStyle(
                fontFamily: 'worksansbold',
              ),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple.shade700,
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple.shade700,
                    width: 2.0,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple.shade700,
                    width: 5.0,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 2.0),
          Material(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'menu_page');
                },
                elevation: 10.0,
                height: 40.0,
                // padding: EdgeInsets.symmetric(horizontal: 100.0),
                color: Colors.purple.shade700,
                child: const Text(
                  'login',
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
          const SizedBox(height: 150.0),
        ],
      ),
    );
  }
}
