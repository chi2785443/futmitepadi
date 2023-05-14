import 'package:flutter/material.dart';
import 'pages/main_pages/sign_in_page.dart';
import 'pages/main_pages/welcome_page.dart';
import 'pages/main_pages/login_page.dart';
import 'pages/main_pages/menu_page.dart';
import 'pages/main_pages/Pro_page.dart';
import 'pages/menu_pages/pretest_page.dart';
import 'pages/main_pages/notification_page.dart';
import 'pages/main_pages/profile_page.dart';
import 'pages/main_pages/aboutus_page.dart';
import 'pages/introduction_pages/news_introduction_page.dart';
import 'pages/introduction_pages/housing_introduction_page.dart';
import 'pages/introduction_pages/library_introduction_page.dart';
import 'pages/introduction_pages/pretest_introduction_page.dart';
import 'pages/introduction_pages/shop_introduction_page.dart';
import 'pages/introduction_pages/livescores_introduction_page.dart';
import 'pages/introduction_pages/calendar_introduction_page.dart';
import 'pages/introduction_pages/services_introduction_page.dart';
import 'pages/introduction_pages/chat_introduction_page.dart';
import 'pages/introduction_pages/courses_introduction_page.dart';
import 'pages/introduction_pages/scholarship_introduction_page.dart';
import 'pages/introduction_pages/eportal_introduction_page.dart';
import 'pages/menu_pages/main_news_page.dart';
import 'pages/menu_pages/housing_page.dart';
import 'pages/menu_pages/calendar_page.dart';
import 'pages/menu_pages/library_page.dart';
import 'pages/menu_pages/services_page.dart';
import 'pages/menu_pages/shop_page.dart';
import 'pages/menu_pages/scholarship_page.dart';
import 'pages/menu_pages/livescores_page.dart';
import 'pages/menu_pages/courses_page.dart';
import 'pages/menu_pages/pretest_selection_page.dart';
import 'pages/menu_pages/e_portal_page.dart';

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
        backgroundColor: Colors.white,
        primaryColor: const Color(0xff9C27B0),
        primarySwatch: Colors.purple,
      ),
      home: const Welcome_Page(),
      // initialRoute: 'welcome_page',
      routes: {
        'welcome_page': (context) => const Welcome_Page(),
        'sign_in_page': (context) => const Sign_In_Page(),
        'login_page': (context) => const login_Page(),
        'menu_page': (context) => const Menu_Page(),
        'news_introduction_page': (context) => NewsIntroductionPage(),
        'housing_introduction_page': (context) => HousingIntroductionPage(),
        'library_introduction_page': (context) => LibraryIntroductionPage(),
        'pretest_introduction_page': (context) => PretestIntroductionPage(),
        'shop_introduction_page': (context) => ShopIntroductionPage(),
        'livescores_introduction_page': (context) =>
            LivescoresIntroductionPage(),
        'calendar_introduction_page': (context) => CalendarIntroductionPage(),
        'services_introduction_page': (context) => ServicesIntroductionPage(),
        'chat_introduction_page': (context) => ChatIntroductionPage(),
        'collaborators_page': (context) => ProPage(),
        'pretest_page': (context) => const PretestPage(),
        'courses_introduction_page': (context) => CoursesIntroductionPage(),
        'eportal_introduction_page': (context) => EportalIntroductionPage(),
        'scholarship_introduction_page': (context) =>
            ScholarshipIntroductionPage(),
        'profile_page': (context) => ProfilePage(),
        'notification_page': (context) => NotificationPage(),
        'aboutus_page': (context) => AboutusPage(),
        'mainnewspage_page': (context) => MainNewsPage(),
        'housingpage_page': (context) => HousingPage(),
        'library_page': (context) => LibraryPage(),
        'calendar_page': (context) => CalendarPage(),
        'services_page': (context) => ServicesPage(),
        'shop_page': (context) => ShopPage(),
        'scholarship_page': (context) => ScholarshipPage(),
        'livescores_page': (context) => LivescoresPage(),
        'courses_page': (context) => CoursesPage(),
        'pretest_selection_page': (context) => PreTestSelectionPage(),
        'eportal_page': (context) => EportalPage(),
      },
    );
  }
}
