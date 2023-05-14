import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
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
          'Shop',
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
          Shoptiles(
            shopimaage: Image(
              image: AssetImage('images/login_logo.png'),
            ),
            title: 'NIKE SHOES PLUG',
            subtext: 'Contact: Pablo macala',
            prices: 'from 65k to 250k',
          ),
        ],
      ),
    );
  }
}
