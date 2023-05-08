import 'package:flutter/material.dart';

class Menu_card extends StatelessWidget {
  // const Menu_card({Key? key}) : super(key: key);

  Menu_card(
      {required this.cardicon,
      required this.headertext,
      required this.subtext});

  final Icon cardicon;
  final String headertext;
  final String subtext;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.purple.shade300, blurRadius: 10)
          ], color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          margin: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 10,
          ),
          height: 160,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.cardicon),
                Icon(
                  Icons.account_circle,
                  // Icons(cardicon),
                  // Icons.hub_sharp,
                  size: 70,
                  color: Colors.purple.shade500,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(
                    '$headertext',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'worksansbold',
                        fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    '$subtext',
                    style: TextStyle(
                        letterSpacing: 1.5,
                        color: Colors.purple.shade600,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'worksans',
                        fontSize: 14),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
