import 'package:flutter/material.dart';
import 'package:futmitepadi/pages/main_pages/profile_page.dart';
import 'package:futmitepadi/pages/main_pages/welcome_page.dart';
import 'aboutus_page.dart';
import 'Pro_page.dart';
import 'dashboardpage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Menu_Page extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
            ;
          } else if (snapshot.hasError) {
            return Center(child: Text('something went wrong'));
          } else if (snapshot.hasData) {
            return Mainmenupage();
          } else {
            return Welcome_Page();
          }
        });
  }
}

class Mainmenupage extends StatefulWidget {
  const Mainmenupage({Key? key}) : super(key: key);

  @override
  State<Mainmenupage> createState() => _MainmenupageState();
}

class _MainmenupageState extends State<Mainmenupage> {
  final user = FirebaseAuth.instance.currentUser!;
  List pages = [
    Dashboard(),
    ProPage(),
    ProfilePage(),
    AboutusPage(),
  ];

  int currentindex = 0;

  void ontap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      // backgroundColor: Colors.purple.shade50,
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentindex,
        iconSize: 16,
        selectedItemColor: Colors.purple.shade700,
        unselectedItemColor: Colors.black,
        selectedFontSize: 12,
        unselectedFontSize: 0,
        elevation: 10.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_outlined),
            label: 'Pro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'About us',
          )
        ],
      ),
    );
  }
}
