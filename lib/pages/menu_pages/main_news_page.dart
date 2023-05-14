import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class MainNewsPage extends StatefulWidget {
  const MainNewsPage({Key? key}) : super(key: key);

  @override
  State<MainNewsPage> createState() => _MainNewsPageState();
}

class _MainNewsPageState extends State<MainNewsPage> {
  Widget buildbottumsheet(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          color: Colors.white,
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/schoolgate.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'FUTMINNA RELEASES A NEW CALENDER',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '10:00am  10/5/2023',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.purple.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    ' INCREMENT IN HOSTELS ACCOMMODATION FEE; OUR STAND Solidarity greetings to all and sundry,Futmites have to be aware that coming together is a beginning, keeping together is progress, and Working together is Success.The last few weeks have been with consolidation, consultation, and confrontational sittings in a bid to improve the welfare and maintain a healthy state of living for our students living in the school-owned hostels while maintaining its cost effect at its minimal.Yesterday, another meeting was held with the school management to discuss the issues of increment in the price of hostel accommodation fees.',
                    style: TextStyle(
                        fontFamily: 'sourcesanspro',
                        letterSpacing: 1.5,
                        color: Colors.black,
                        fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

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
          'Campus News',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        children: [
          const SizedBox(
            height: 15,
          ),
          News_card(
            ontap: () {
              showModalBottomSheet(context: context, builder: buildbottumsheet);
            },
            headertext: 'Futminna released a new calendar',
            date: '10:00am  10/5/2023',
            cardimage: Image.asset('images/schoolgate.png'),
          ),
          News_card(
            ontap: () {
              showModalBottomSheet(context: context, builder: buildbottumsheet);
            },
            headertext: 'Futminna released a new calendar',
            date: '10:00am  10/5/2023',
            cardimage: Image.asset('images/schoolgate.png'),
          ),
          News_card(
            ontap: () {
              showModalBottomSheet(context: context, builder: buildbottumsheet);
            },
            headertext: 'Futminna released a new calendar',
            date: '10:00am  10/5/2023',
            cardimage: Image.asset('images/schoolgate.png'),
          ),
          News_card(
            ontap: () {
              showModalBottomSheet(context: context, builder: buildbottumsheet);
            },
            headertext: 'Futminna released a new calendar',
            date: '10:00am  10/5/2023',
            cardimage: Image.asset('images/schoolgate.png'),
          ),
          News_card(
            ontap: () {
              showModalBottomSheet(context: context, builder: buildbottumsheet);
            },
            headertext: 'Futminna released a new calendar',
            date: '10:00am  10/5/2023',
            cardimage: Image.asset('images/schoolgate.png'),
          ),
        ],
      ),
    );
  }
}
