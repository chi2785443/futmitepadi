import 'package:flutter/material.dart';

class ScholarshipIntroductionPage extends StatefulWidget {
  @override
  State<ScholarshipIntroductionPage> createState() =>
      _ScholarshipIntroductionPageState();
}

class _ScholarshipIntroductionPageState
    extends State<ScholarshipIntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
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
                    Column(
                      children: const [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.purple,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.purple,
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.purple,
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.purple.shade100,
                    backgroundImage:
                        const AssetImage('images/colaborators.png'),
                    radius: 130,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Futmitepadi  SCHOLARSHIPS',
                            style: TextStyle(
                                color: Colors.purple.shade600,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'worksans',
                                fontSize: 12),
                          ),
                        ],
                      ),
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.purple,
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Get updated on scholarships with futmitepadi',
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'sourcesanspro',
                      fontSize: 30),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Get notified and updated 100% 0n both local and international scholarships for undergraduate.',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.03,
                        fontFamily: 'worksans',
                        fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.linear_scale_outlined,
                      size: 40,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.purple,
                      onPressed: () {
                        Navigator.pushNamed(context, 'scholarship_page');
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
