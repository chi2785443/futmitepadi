import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
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
          'School calendar',
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
            height: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.purple.shade300, blurRadius: 2)
                ],
                color: Colors.purple.shade100,
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 7,
              ),
              height: 25,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Flexible(
                        child: Text(
                          '2022/2023 first semester(18 weeks)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Calendartiles(
            title: 'Online registeration for new and returning students',
            date: 'monday 8th may to 5th june 2023',
          ),
          const Calendartiles(
            title: 'lecture begins for 100l-500l students',
            date: 'monday 22nd may 2023',
          ),
          const Calendartiles(
            title: 'Orientation for new students',
            date: 'thursday 15th june to 17th june 2023',
          ),
          const Calendartiles(
            title: 'Matriculation for new students',
            date: 'thursday 17th july to 29th july 2023',
          ),
          const Calendartiles(
            title: 'Etest for 100l and large classes',
            date: 'monday 17th july to 29th july 2023',
          ),
          const Calendartiles(
            title: 'Lectures continues for all level',
            date: 'monday 31st july to 2nd sept 2023',
          ),
          const Calendartiles(
            title: 'e-exams for 100l level and large classes',
            date: 'monday 4th sept to 23rd sept 2023',
          ),
          const Calendartiles(
            title: 'First semester exams for 200l-500l',
            date: 'monday 11th sept to 23rd sept 2023',
          ),
          const Calendartiles(
            title: 'first semester break',
            date: 'Saturday 23rd sept to 7th oct 2023',
          ),
          const Calendartiles(
            title: 'Siwe for all schools with exception of saat',
            date: 'monday 9th may to 23rd march 2024',
          ),
          const Calendartiles(
            title: 'School board to consider first semester result',
            date: 'monday 16th oct, 2023',
          ),
          const Calendartiles(
            title: 'Senate to consider first semester result',
            date: 'wednesday 1st nov 2023',
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.purple.shade300, blurRadius: 2)
                ],
                color: Colors.purple.shade100,
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 7,
              ),
              height: 25,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Flexible(
                        child: Text(
                          '2022/2023 second semester(18 weeks)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Calendartiles(
            title: 'lecture begins for 100l-500l students',
            date: 'monday 9th may 2023',
          ),
          const Calendartiles(
            title: 'Online registeration for new and returning students',
            date: 'monday 8th may to 5th june 2023',
          ),
          const Calendartiles(
            title: 'Online registeration for new and returning students',
            date: 'monday 8th may to 5th june 2023',
          ),
          const Calendartiles(
            title: 'Etest for 100l and large classes',
            date: 'monday 11th dec to 23th dec 2023',
          ),
          const Calendartiles(
            title: 'Annual recess',
            date: 'Saturday 23rd dec to 1st jan 2024',
          ),
          const Calendartiles(
            title: 'Lectures continues for all level',
            date: 'wednesday 3rd jan to 27th jan 2024',
          ),
          const Calendartiles(
            title: 'e-exams for 100l level and large classes',
            date: 'monday 23rd jan to 17th feb 2024',
          ),
          const Calendartiles(
            title: 'Second semester exams for 200l-500l',
            date: 'monday 5th feb to 17th feb 2024',
          ),
          const Calendartiles(
            title: 'founder,s day/convocation day',
            date: 'Thursday 1st feb, 2024',
          ),
          const Calendartiles(
            title: 'Second semester break',
            date: 'Saturday 17th feb to 16th mar 2024',
          ),
          const Calendartiles(
            title: 'swep / field trip',
            date: 'monday 19th feb to 16th mar 2024',
          ),
          const Calendartiles(
            title: 'School board to consider first semester result',
            date: 'monday 11th mar, 2024',
          ),
          const Calendartiles(
            title: 'Senate to consider first semester result',
            date: 'wednesday 27th mar 2024',
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.purple.shade300, blurRadius: 2)
                ],
                color: Colors.purple.shade100,
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 7,
              ),
              height: 25,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Flexible(
                        child: Text(
                          'New Session',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Calendartiles(
            title: 'Starts',
            date: 'monday 18th mar 2024',
          ),
        ],
      ),
    );
  }
}
