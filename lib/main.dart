import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';
import 'contact_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 64.0,
              foregroundImage: AssetImage('images/hero_cat.png'),
            ),
            const Text(
              'Catty Catson',
              style: TextStyle(
                  fontSize: 50.0,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.w500,
                  color: kSecondaryColor),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Cute Youtuber',
                style: TextStyle(
                  fontSize: 24.0,
                  letterSpacing: 4.0,
                  fontFamily: 'Source Sans 3',
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor[100],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: SizedBox(
                width: 160.0,
                child: Divider(
                  thickness: 2.0,
                  color: kPrimaryColor[100],
                ),
              ),
            ),
            const ContactCard(
              icon: Icons.phone,
              path: kPhoneNumberString,
              scheme: 'tel',
            ),
            const ContactCard(
              icon: Icons.email,
              path: kEmailString,
              scheme: 'mailto',
            ),
          ],
        ),
      ),
    );
  }
}
