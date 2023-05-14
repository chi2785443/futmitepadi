import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class LivescoresPage extends StatefulWidget {
  @override
  State<LivescoresPage> createState() => _LivescoresPageState();
}

class _LivescoresPageState extends State<LivescoresPage> {
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
          'Livescores',
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
          Livescorestiles(
            course: 'MAT111',
            question: 'who is referred to as the father of stratigraphy?',
            answer: 'Smith',
          ),
          Livescorestiles(
            course: 'MAT111',
            question: 'who is referred to as the father of stratigraphy?',
            answer: 'Smith',
          ),
          Livescorestiles(
            course: 'MAT111',
            question: 'who is referred to as the father of stratigraphy?',
            answer: 'Smith',
          ),
          Livescorestiles(
            course: 'MAT111',
            question: 'who is referred to as the father of stratigraphy?',
            answer: 'Smith',
          ),
          Livescorestiles(
            course: 'MAT111',
            question:
                'In the history of geology who is referred to as the father of stratigraphy?',
            answer: 'Smith',
          ),
          Livescorestiles(
            course: 'MAT111',
            question: 'who is referred to as the father of stratigraphy?',
            answer: 'Smith',
          ),
          Livescorestiles(
            course: 'MAT111',
            question: 'who is referred to as the father of stratigraphy?',
            answer: 'Smith',
          ),
          Livescorestiles(
            course: 'MAT111',
            question: 'who is referred to as the father of stratigraphy?',
            answer: 'Smith',
          ),
        ],
      ),
    );
  }
}
