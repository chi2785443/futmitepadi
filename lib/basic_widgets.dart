import 'package:flutter/material.dart';

class Utils {
  static final messengerKey = GlobalKey<ScaffoldMessengerState>();

  static showSnackBar(String? text) {
    if (text == null) return;

    final snackBar = SnackBar(
      content: Text(text),
      backgroundColor: Colors.red,
    );
    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

class Menu_card extends StatelessWidget {
  // const Menu_card({Key? key}) : super(key: key);

  Menu_card({
    super.key,
    required this.cardwidget,
    required this.headertext,
    required this.subtext,
    required this.ontap,
  });

  final Widget cardwidget;
  final String headertext;
  final String subtext;
  Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.purple.shade300, blurRadius: 1)
          ], color: Colors.white, borderRadius: BorderRadius.circular(35.0)),
          margin: const EdgeInsets.symmetric(
            vertical: 7,
            horizontal: 7,
          ),
          height: 110,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: cardwidget),
                  Text(
                    '$headertext',
                    style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'worksansbold',
                        fontSize: 11),
                  ),
                  Text(
                    '$subtext',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.purple.shade600,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'worksans',
                        fontSize: 9),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Purpleflatbutton extends StatelessWidget {
  const Purpleflatbutton({
    Key? key,
    required this.title,
    required this.onpressed,
  }) : super(key: key);

  final String title;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: MaterialButton(
        onPressed: onpressed,
        elevation: 8.0,
        height: 35.0,
        // padding: EdgeInsets.symmetric(horizontal: 100.0),
        color: Colors.purple.shade700,
        child: Text(
          title,
          style: TextStyle(
              fontFamily: 'worksans',
              letterSpacing: 0.8,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}

class Questionbutton extends StatelessWidget {
  const Questionbutton(
      {Key? key,
      required this.option,
      required this.onpressed,
      required this.answer});

  final String option;
  final String answer;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.purple,
        onPressed: onpressed,
        child: Text(
          '$option.  $answer',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}

class News_card extends StatelessWidget {
  // const Menu_card({Key? key}) : super(key: key);

  News_card({
    super.key,
    required this.cardimage,
    required this.headertext,
    required this.date,
    required this.ontap,
  });

  final Image cardimage;
  final String headertext;
  final String date;
  Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.purple.shade300, blurRadius: 1)
          ], color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          margin: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          height: 210,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: cardimage),
                  Text(
                    '$headertext',
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Text(
                    '$date',
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.purple.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Courses_card extends StatelessWidget {
  // const Menu_card({Key? key}) : super(key: key);

  Courses_card({
    super.key,
    required this.cardimage,
    required this.title,
    required this.subtext,
    required this.ontap,
  });

  final Image cardimage;
  final String title;
  final String subtext;
  Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.purple.shade300, blurRadius: 1)
          ], color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
          margin: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          height: 210,
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: cardimage),
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Text(
                    subtext,
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.purple.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Menutiles extends StatelessWidget {
  const Menutiles({
    Key? key,
    required this.title,
    required this.subtext,
  });

  final String title;
  final String subtext;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 7,
          horizontal: 7,
        ),
        height: 65,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                          fontSize: 15),
                    ),
                    Flexible(
                      child: Text(
                        subtext,
                        style: const TextStyle(
                            color: Colors.purple,
                            fontFamily: 'worksans',
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.purple,
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

class Housingtiles extends StatelessWidget {
  const Housingtiles({
    required this.title,
    required this.subtext,
    required this.prices,
  });

  final String title;
  final String subtext;
  final String prices;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 7,
          horizontal: 7,
        ),
        height: 85,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            fontSize: 16),
                      ),
                    ),
                    Text(
                      subtext,
                      style: const TextStyle(
                          color: Colors.purple,
                          fontFamily: 'sourcesanspro',
                          fontSize: 14),
                    ),
                    Text(
                      prices,
                      style: const TextStyle(
                          color: Colors.purple,
                          fontFamily: 'sourcesanspro',
                          fontSize: 13),
                    ),
                  ],
                ),
                IconButton(
                  color: Colors.purple,
                  onPressed: () {},
                  icon: Icon(
                    Icons.message,
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

class Librarytiles extends StatelessWidget {
  const Librarytiles({
    required this.title,
    required this.subtext,
  });

  final String title;
  final String subtext;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 7,
          horizontal: 7,
        ),
        height: 55,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            fontSize: 16),
                      ),
                    ),
                    Text(
                      subtext,
                      style: const TextStyle(
                          color: Colors.purple,
                          fontFamily: 'sourcesanspro',
                          fontSize: 14),
                    ),
                  ],
                ),
                IconButton(
                  color: Colors.purple,
                  onPressed: () {},
                  icon: Icon(
                    Icons.download,
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

class Calendartiles extends StatelessWidget {
  const Calendartiles({
    required this.title,
    required this.date,
  });

  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 7,
        ),
        height: 35,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.purple,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                      color: Colors.purple,
                      fontFamily: 'sourcesanspro',
                      fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Servicestiles extends StatelessWidget {
  const Servicestiles({
    required this.title,
    required this.subtext,
    required this.prices,
  });

  final String title;
  final String subtext;
  final String prices;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 7,
          horizontal: 7,
        ),
        height: 85,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            fontSize: 16),
                      ),
                    ),
                    Text(
                      subtext,
                      style: const TextStyle(
                          color: Colors.purple,
                          fontFamily: 'sourcesanspro',
                          fontSize: 14),
                    ),
                    Text(
                      prices,
                      style: const TextStyle(
                          color: Colors.purple,
                          fontFamily: 'sourcesanspro',
                          fontSize: 13),
                    ),
                  ],
                ),
                IconButton(
                  color: Colors.purple,
                  onPressed: () {},
                  icon: Icon(
                    Icons.message,
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

class Shoptiles extends StatelessWidget {
  const Shoptiles({
    required this.title,
    required this.subtext,
    required this.prices,
    required this.shopimaage,
  });

  final String title;
  final String subtext;
  final String prices;
  final Image shopimaage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 7,
          horizontal: 7,
        ),
        height: 130,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: shopimaage,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            fontSize: 16),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        subtext,
                        style: const TextStyle(
                            color: Colors.purple,
                            fontFamily: 'sourcesanspro',
                            fontSize: 14),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        prices,
                        style: const TextStyle(
                            color: Colors.purple,
                            fontFamily: 'sourcesanspro',
                            fontSize: 13),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  color: Colors.purple,
                  onPressed: () {},
                  icon: Icon(
                    Icons.message,
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

class Scholarshiptiles extends StatelessWidget {
  const Scholarshiptiles({
    required this.title,
    required this.subtext,
    required this.prices,
  });

  final String title;
  final String subtext;
  final String prices;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 7,
          horizontal: 7,
        ),
        height: 150,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                              fontSize: 16),
                        ),
                      ),
                      Text(
                        subtext,
                        style: const TextStyle(
                            color: Colors.purple,
                            fontFamily: 'sourcesanspro',
                            fontSize: 14),
                      ),
                      Text(
                        prices,
                        style: const TextStyle(
                            color: Colors.purple,
                            fontFamily: 'sourcesanspro',
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  color: Colors.purple,
                  onPressed: () {},
                  icon: Icon(
                    Icons.link_outlined,
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

class Livescorestiles extends StatelessWidget {
  const Livescorestiles(
      {required this.course, required this.question, required this.answer});

  final String course;
  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.purple.shade300, blurRadius: 2)],
          color: Colors.purple.shade100,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
        ),
        margin: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 7,
        ),
        height: 100,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            fontSize: 13),
                      ),
                      Flexible(
                        child: Text(
                          'question: $question',
                          style: const TextStyle(
                              color: Colors.purple,
                              fontFamily: 'sourcesanspro',
                              fontSize: 13),
                        ),
                      ),
                      Text(
                        'Answer: $answer',
                        style: const TextStyle(
                            color: Colors.purple,
                            fontFamily: 'sourcesanspro',
                            fontSize: 13),
                      ),
                    ],
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
