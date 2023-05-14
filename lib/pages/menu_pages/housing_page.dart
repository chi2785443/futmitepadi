import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class HousingPage extends StatefulWidget {
  const HousingPage({Key? key}) : super(key: key);

  @override
  State<HousingPage> createState() => _HousingPageState();
}

class _HousingPageState extends State<HousingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'notification_page');
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
        title: const Text(
          'Accommodation',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        children: const [
          SizedBox(
            height: 15,
          ),
          Housingtiles(
            title: 'TAlBA ROAD',
            subtext: 'Contact: Pablo macala',
            prices: 'from 65k to 250k',
          ),
          Housingtiles(
            title: 'FRONT OF SCHOOL',
            subtext: 'Contact: Pablo macala',
            prices: 'from 100k to 250k',
          ),
          Housingtiles(
            title: 'AROUND MM-CASTLE',
            subtext: 'Contact: Pablo macala',
            prices: 'from 50k to 250k',
          ),
          Housingtiles(
            title: 'AROUND.DAMA',
            subtext: 'Contact: Pablo macala',
            prices: 'from 40k to 150k',
          ),
          Housingtiles(
            title: 'GIDAN MANGORO',
            subtext: 'Contact: Pablo macala',
            prices: 'from 30k to 120k',
          ),
          Housingtiles(
            title: 'NEW HOSTEL',
            subtext: 'Contact: Pablo macala',
            prices: 'from 145k to 165k',
          ),
          Housingtiles(
            title: 'OLD HOSTEL',
            subtext: 'Contact: Pablo macala',
            prices: 'from 50k to 60k',
          ),
          Housingtiles(
            title: 'AROUND BOSSO',
            subtext: 'Contact: Pablo macala',
            prices: '50k',
          ),
        ],
      ),
    );
  }
}
