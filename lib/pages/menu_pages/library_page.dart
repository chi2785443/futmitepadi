import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
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
          'Library',
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
                          '100 level courses pdfs',
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
          const Librarytiles(
            title: 'MAT111',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'MAT112',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'CHM111',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'CHM112',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'CPTIII',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'GST110',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'PHY113',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'SAT117',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'CHM121',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'CHM191',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'EET121',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'GST103',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'GST121',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'MAT121',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'PHY100',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'PHY123',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'PHY126',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'SAT127',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'IMPORTANT PQS',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'SHORTCUTS',
            subtext: 'Download file: All you need for this course',
          ),
          const Librarytiles(
            title: 'SOME TEXTBOOKS',
            subtext: 'Download file: All you need for this course',
          ),
        ],
      ),
    );
  }
}
