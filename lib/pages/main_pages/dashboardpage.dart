import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'sign_in_page.dart';

class Dashboard extends StatelessWidget {
  Dashboard({
    Key? key,
  }) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple,
        elevation: 5.0,
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, 'notification_page');
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 70.0,
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hi',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 18.0,
                                    fontFamily: 'sourcesanspro',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Your personal assistant',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'worksans',
                                    color: Colors.purple.shade800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'profile_page');
                              },
                              child: CircleAvatar(
                                radius: 18,
                                backgroundColor: Colors.purple.shade500,
                                child: const Text(
                                  'P',
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 25.0,
                                    fontFamily: 'sourcesanspro',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Menutiles(
                        title: 'Upgrade membership',
                        subtext: 'unlock more exclusive benefits.'),
                  ],
                ),
                Row(
                  children: [
                    Menu_card(
                      ontap: () {
                        Navigator.pushNamed(context, 'news_introduction_page');
                      },
                      headertext: 'CAMPUS NEWS',
                      subtext: 'campus updates',
                      cardwidget: Icon(
                        Icons.newspaper_outlined,
                        size: 55,
                        color: Colors.purple.shade500,
                      ),
                    ),
                    Menu_card(
                      ontap: () {
                        Navigator.pushNamed(
                            context, 'housing_introduction_page');
                      },
                      headertext: 'HOUSING',
                      subtext: 'your lodges',
                      cardwidget: Icon(
                        Icons.real_estate_agent_outlined,
                        size: 55,
                        color: Colors.purple.shade500,
                      ),
                    ),
                    Menu_card(
                      ontap: () {
                        Navigator.pushNamed(
                            context, 'library_introduction_page');
                      },
                      headertext: 'LIBRARY',
                      subtext: 'download pdfs',
                      cardwidget: Icon(
                        Icons.library_books_outlined,
                        size: 55,
                        color: Colors.purple.shade500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Menu_card(
                      ontap: () {
                        Navigator.pushNamed(
                            context, 'pretest_introduction_page');
                      },
                      headertext: 'PRE TEST',
                      subtext: 'practice',
                      cardwidget: Icon(
                        Icons.quiz_outlined,
                        size: 55,
                        color: Colors.purple.shade500,
                      ),
                    ),
                    Menu_card(
                      ontap: () {
                        Navigator.pushNamed(
                            context, 'calendar_introduction_page');
                      },
                      headertext: 'CALENDAR',
                      subtext: 'School calendar',
                      cardwidget: Icon(
                        Icons.calendar_month_outlined,
                        size: 55,
                        color: Colors.purple.shade500,
                      ),
                    ),
                    Menu_card(
                      ontap: () {
                        Navigator.pushNamed(
                            context, 'services_introduction_page');
                      },
                      headertext: 'SERVICES',
                      subtext: 'Our services',
                      cardwidget: Icon(
                        Icons.contact_support_outlined,
                        size: 55,
                        color: Colors.purple.shade500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Menu_card(
                      ontap: () {
                        Navigator.pushNamed(context, 'shop_introduction_page');
                      },
                      headertext: 'SHOP',
                      subtext: 'Get your items',
                      cardwidget: Icon(
                        Icons.shopping_cart_outlined,
                        size: 55,
                        color: Colors.purple.shade500,
                      ),
                    ),
                    Menu_card(
                      ontap: () {
                        Navigator.pushNamed(
                            context, 'scholarship_introduction_page');
                      },
                      headertext: 'SCHOLARSHIPS',
                      subtext: '100% update',
                      cardwidget: Icon(
                        Icons.verified_user_outlined,
                        size: 55,
                        color: Colors.purple.shade500,
                      ),
                    ),
                    Menu_card(
                      ontap: () {
                        Navigator.pushNamed(
                            context, 'eportal_introduction_page');
                      },
                      headertext: 'E-PORTAL',
                      subtext: 'Student portal',
                      cardwidget: Icon(
                        Icons.school_outlined,
                        size: 55,
                        color: Colors.purple.shade500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Menu_card(
                      ontap: () {
                        Navigator.pushNamed(
                            context, 'courses_introduction_page');
                      },
                      headertext: 'COURSES',
                      subtext: 'learn a skill',
                      cardwidget: Icon(
                        Icons.model_training_outlined,
                        size: 55,
                        color: Colors.purple.shade500,
                      ),
                    ),
                    Menu_card(
                      ontap: () {
                        Navigator.pushNamed(
                            context, 'livescores_introduction_page');
                      },
                      headertext: 'LIVESCORES',
                      subtext: 'Possible questions',
                      cardwidget: Icon(
                        Icons.system_update_outlined,
                        size: 55,
                        color: Colors.purple.shade500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Menutiles(
                      title: 'Need help?',
                      subtext: 'Try our self service options',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: const Icon(Icons.chat),
        onPressed: () {
          Navigator.pushNamed(context, 'chat_introduction_page');
        },
      ),
    );
  }
}
