import 'package:ecommerce/colors.dart';
import 'package:ecommerce/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final List<Map<String, dynamic>> settingsList = [
    {
      'icon': FontAwesomeIcons.user,
      'title': 'User Profile',
      'subtitle': 'Email, Phone, Addresses, and Identity',
      'arrow': FontAwesomeIcons.angleRight,
    },
    {
      'icon': FontAwesomeIcons.shieldHalved,
      'title': 'Security and Privacy',
      'subtitle': 'Passcodes, Fingerprints, and Privacy',
      'arrow': FontAwesomeIcons.angleRight,
    },
    {
      'icon': FontAwesomeIcons.creditCard,
      'title': 'Payment',
      'subtitle': 'Saved cards, preferred methods',
      'arrow': FontAwesomeIcons.angleRight,
    },
    {
      'icon': FontAwesomeIcons.clockRotateLeft,
      'title': 'Past Trips',
      'subtitle': 'Previous trips, Invoices, and other details',
      'arrow': FontAwesomeIcons.angleRight,
    },
    {
      'icon': FontAwesomeIcons.circleQuestion,
      'title': 'Help and Support',
      'subtitle': 'For any question, contact us',
      'arrow': FontAwesomeIcons.angleRight,
    },
    {
      'icon': FontAwesomeIcons.arrowRightFromBracket,
      'title': 'Log out',
      'subtitle': '',
      'isLogout': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),
                const SizedBox(width: 8),
                Text(
                  'Settings',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: settingsList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: FaIcon(
                      settingsList[index]['icon'],
                      color: darkblue,
                    ),
                    title: Text(
                      settingsList[index]['title'],
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(settingsList[index]['subtitle']),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: FaIcon(settingsList[index]['arrow']),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
