import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class PreTestSelectionPage extends StatefulWidget {
  const PreTestSelectionPage({Key? key}) : super(key: key);

  @override
  State<PreTestSelectionPage> createState() => _PreTestSelectionPageState();
}

class _PreTestSelectionPageState extends State<PreTestSelectionPage> {
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
          'Pre Test',
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
                vertical: 7,
                horizontal: 7,
              ),
              height: 35,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Flexible(
                        child: Text(
                          'Courses available',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.purple.shade300, blurRadius: 2)
                ],
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(30),
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 7,
                horizontal: 7,
              ),
              height: 200,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Flexible(
                        child: Text(
                          'MAT111',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                              fontSize: 18),
                        ),
                      ),
                      const Text(
                        'Best way to prepare for your E test/exams',
                        style: TextStyle(
                            color: Colors.purple,
                            fontFamily: 'sourcesanspro',
                            fontSize: 16),
                      ),
                      const Text(
                        '60 questions / 60 minutes',
                        style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'sourcesanspro',
                            fontSize: 16),
                      ),
                      const Text(
                        'Use your mini calculator if needed',
                        style: TextStyle(
                            color: Colors.purple,
                            fontFamily: 'sourcesanspro',
                            fontSize: 16),
                      ),
                      Purpleflatbutton(
                        title: 'Start',
                        onpressed: () {
                          Navigator.pushNamed(context, 'pretest_page');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
