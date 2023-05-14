import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class PretestPage extends StatefulWidget {
  const PretestPage({Key? key}) : super(key: key);

  @override
  State<PretestPage> createState() => _PretestPageState();
}

class _PretestPageState extends State<PretestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      body: SafeArea(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.camera_alt_outlined,
                      size: 30,
                      color: Colors.purple,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.purple,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.purple,
                  child: CircleAvatar(
                    child: Text(
                      '60:00',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.purple.shade300, blurRadius: 2)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)),
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Center(
                              child: Text(
                                'Question 1/60',
                                style: TextStyle(
                                  fontFamily: 'sourcesanspro',
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                              thickness: 0.6,
                            ),
                            const Center(
                              child: Text(
                                'Flutter is an open - source UI software development kit created by?',
                                style: TextStyle(
                                  fontFamily: 'sourcesanspro',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const Divider(
                              color: Colors.black,
                              thickness: 0.2,
                            ),
                            Questionbutton(
                                option: 'A', onpressed: () {}, answer: 'Apple'),
                            Questionbutton(
                                option: 'B',
                                onpressed: () {},
                                answer: 'Google'),
                            Questionbutton(
                                option: 'C',
                                onpressed: () {},
                                answer: 'Facebook'),
                            Questionbutton(
                                option: 'D',
                                onpressed: () {},
                                answer: 'Microsoft'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
