import 'package:flutter/material.dart';

class EportalPage extends StatefulWidget {
  @override
  State<EportalPage> createState() => _EportalPageState();
}

class _EportalPageState extends State<EportalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.purple,
        elevation: 5.0,
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pushNamed(context, 'notification_page');
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
        title: const Text(
          'E-portal',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35,
              child: Icon(
                Icons.person,
                color: Colors.purple,
                size: 40,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.purple.shade300, blurRadius: 1)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 30,
              ),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Center(
                        child: Text(
                          '2018/1/70572EC',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 0.3,
                      ),
                      const ListTile(
                        trailing: Icon(
                          Icons.near_me,
                          color: Colors.purple,
                        ),
                        title: Text(
                          'My E-portal',
                          style: TextStyle(
                            fontFamily: 'sourcesanspro',
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const ListTile(
                        trailing: Icon(
                          Icons.school,
                          color: Colors.purple,
                        ),
                        title: Text(
                          'My E-result',
                          style: TextStyle(
                            fontFamily: 'sourcesanspro',
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const ListTile(
                        trailing: Icon(
                          Icons.mail_outline,
                          color: Colors.purple,
                        ),
                        title: Text(
                          'My student email',
                          style: TextStyle(
                            fontFamily: 'sourcesanspro',
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MaterialButton(
                          onPressed: () {},
                          elevation: 5.0,
                          height: 35.0,
                          color: Colors.purple,
                          child: const Text(
                            'Log out',
                            style: TextStyle(
                                fontFamily: 'worksans',
                                letterSpacing: 0.8,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
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
