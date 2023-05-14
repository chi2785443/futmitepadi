import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
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
          'Services',
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
          Servicestiles(
            title: 'DRY CLEANING SERVICES',
            subtext: 'Contact: Pablo macala',
            prices: 'from 65k to 250k',
          ),
          Servicestiles(
            title: 'ROOM CLEANING SERVICES',
            subtext: 'Contact: Pablo macala',
            prices: 'from 100k to 250k',
          ),
          Servicestiles(
            title: 'GOODS DELIVERY SERVICES',
            subtext: 'Contact: Pablo macala',
            prices: 'from 50k to 250k',
          ),
          Servicestiles(
            title: 'FOOD DELIVERY',
            subtext: 'Contact: Pablo macala',
            prices: 'from 40k to 150k',
          ),
          Servicestiles(
            title: 'MAY RUWA PLUG',
            subtext: 'Contact: Pablo macala',
            prices: 'from 30k to 120k',
          ),
          Servicestiles(
            title: 'TRANSPORTATION SERVICES',
            subtext: 'Contact: Pablo macala',
            prices: 'from 145k to 165k',
          ),
        ],
      ),
    );
  }
}
