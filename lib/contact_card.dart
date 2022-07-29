import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'constants.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
    required this.path,
    required this.scheme,
    required this.icon,
  }) : super(key: key);

  final IconData icon;
  final String path;
  final String scheme;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.all(20.0),
      child: ListTile(
        tileColor: kSecondaryColor,
        textColor: kPrimaryColor,
        iconColor: kPrimaryColor,
        leading: Icon(
          icon,
        ),
        title: Text(
          path,
          style: const TextStyle(
            fontSize: 20.0,
            fontFamily: 'Source Sans 3',
          ),
        ),
        onTap: () async {
          final Uri launchUri = Uri(
            scheme: scheme,
            path: path,
          );
          await url_launcher.launchUrl(launchUri);
        },
      ),
    );
  }
}
