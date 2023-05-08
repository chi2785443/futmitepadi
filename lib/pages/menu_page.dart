import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class Menu_Page extends StatelessWidget {
  const Menu_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 2.0,
        actionsIconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
        title: const Text(
          'DASHBOARD',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'worksansbold',
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 90.0,
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'HI, password',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: 'worksansbold',
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Your personal assistant',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'worksans',
                                color: Colors.purple.shade800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.purple.shade700,
                          child: const Icon(Icons.account_circle),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Menu_card(
                  headertext: 'CAMPUS NEWS',
                  subtext: 'campus updates',
                  cardicon: Icon(
                    Icons.account_circle,
                    // Icons(cardicon),
                    // Icons.hub_sharp,
                    size: 70,
                    color: Colors.purple.shade500,
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purple.shade300, blurRadius: 10)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 10,
                      ),
                      height: 160,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.newspaper,
                              size: 70,
                              color: Colors.purple.shade500,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                'CAMPUS NEWS',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'worksansbold',
                                    fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'campus updates',
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
                ),
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purple.shade300, blurRadius: 10)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      height: 160,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.real_estate_agent,
                              size: 70,
                              color: Colors.purple.shade500,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                'ACCOMMODATION',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'worksansbold',
                                    fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'your lodges',
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
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purple.shade300, blurRadius: 10)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      height: 160,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.library_books,
                              size: 70,
                              color: Colors.purple.shade500,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                'LIBRARY',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'worksansbold',
                                    fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'download pdfs',
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
                ),
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purple.shade300, blurRadius: 10)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 10,
                      ),
                      height: 160,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.quiz,
                              size: 70,
                              color: Colors.purple.shade500,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                'PRE TEST',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'worksansbold',
                                    fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'practice questions',
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
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purple.shade300, blurRadius: 10)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      height: 160,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              size: 70,
                              color: Colors.purple.shade500,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                'SHOP',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'worksansbold',
                                    fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'get your items',
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
                ),
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purple.shade300, blurRadius: 10)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      height: 160,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.system_update_alt,
                              size: 70,
                              color: Colors.purple.shade500,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                'LIVESCORES',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'worksansbold',
                                    fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'possible questions',
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
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purple.shade300, blurRadius: 10)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      height: 160,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.calendar_month,
                              size: 70,
                              color: Colors.purple.shade500,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                'CALENDAR',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'worksansbold',
                                    fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'school calendar',
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
                ),
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.purple.shade300, blurRadius: 10)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      height: 160,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.contact_support,
                              size: 70,
                              color: Colors.purple.shade500,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                'SERVICES',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'worksansbold',
                                    fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                'cleaning and delivery',
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
                ),
              ],
            ),
          ],
        ),
      ]),
      backgroundColor: Colors.purple.shade50,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple.shade900,
        child: const Icon(Icons.chat),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        selectedItemColor: Colors.purple.shade900,
        unselectedItemColor: Colors.black,
        selectedFontSize: 18,
        unselectedFontSize: 14,
        elevation: 5.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            label: 'Agent',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'About us',
          )
        ],
      ),
    );
  }
}
