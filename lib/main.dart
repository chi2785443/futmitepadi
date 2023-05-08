import 'package:flutter/material.dart';
import 'pages/sign_in_page.dart';
import 'pages/welcome_page.dart';
import 'pages/login_page.dart';
import 'pages/menu_page.dart';
import 'basic_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FUTMITEPADI',
      theme: ThemeData(
        primaryColor: const Color(0xff9C27B0),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: const Welcome_Page(),
      // initialRoute: 'welcome_page',
      routes: {
        'welcome_page': (context) => const Welcome_Page(),
        'sign_in_page': (context) => const Sign_In_Page(),
        'login_page': (context) => const login_Page(),
        'menu_page': (context) => const Menu_Page()
        // '/first': (context) =>
      },
    );
  }
}
