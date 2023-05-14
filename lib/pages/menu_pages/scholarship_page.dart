import 'package:flutter/material.dart';
import 'package:futmitepadi/basic_widgets.dart';

class ScholarshipPage extends StatefulWidget {
  const ScholarshipPage({Key? key}) : super(key: key);

  @override
  State<ScholarshipPage> createState() => _ScholarshipPageState();
}

class _ScholarshipPageState extends State<ScholarshipPage> {
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
          'Scholarships',
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
          Scholarshiptiles(
            title: '2023 NNPC/NAOC/OANDO SCHOLARSHIP',
            subtext:
                'Avaliable for: students seeking bachelors degree. Eligible level: 100l, click in link for more information and application',
            prices: 'Benefits: N200K yearly',
          ),
          Scholarshiptiles(
            title: '2023 NNPC/NAOC/OANDO SCHOLARSHIP',
            subtext:
                'Avaliable for: students seeking bachelors degree. Eligible level: 100l, click in link for more information and application',
            prices: 'Benefits: N200K yearly',
          ),
          Scholarshiptiles(
            title: '2023 NNPC/NAOC/OANDO SCHOLARSHIP',
            subtext:
                'Avaliable for: students seeking bachelors degree. Eligible level: 100l, click in link for more information and application',
            prices: 'Benefits: N200K yearly',
          ),
          Scholarshiptiles(
            title: '2023 NNPC/NAOC/OANDO SCHOLARSHIP',
            subtext:
                'Avaliable for: students seeking bachelors degree. Eligible level: 100l, click in link for more information and application',
            prices: 'Benefits: N200K yearly',
          ),
          Scholarshiptiles(
            title: '2023 NNPC/NAOC/OANDO SCHOLARSHIP',
            subtext:
                'Avaliable for: students seeking bachelors degree. Eligible level: 100l, click in link for more information and application',
            prices: 'Benefits: N200K yearly',
          ),
        ],
      ),
    );
  }
}
