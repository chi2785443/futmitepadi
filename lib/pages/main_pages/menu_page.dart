import 'package:flutter/material.dart';
import 'package:futmitepadi/pages/main_pages/profile_page.dart';
import 'aboutus_page.dart';
import 'Pro_page.dart';
import 'dashboardpage.dart';

class Menu_Page extends StatefulWidget {
  const Menu_Page({Key? key}) : super(key: key);

  @override
  State<Menu_Page> createState() => _Menu_PageState();
}

class _Menu_PageState extends State<Menu_Page> {
  List pages = [
    const Dashboard(),
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
