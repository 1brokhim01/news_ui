import 'package:flutter/material.dart';
import 'package:home33/screens/pages/settings_navigator/about_page.dart';
import 'package:home33/screens/pages/settings_navigator/darkMode_page.dart';
import 'package:home33/screens/pages/settings_navigator/logOut_page.dart';
import 'package:home33/screens/pages/settings_navigator/notification_page.dart';
import 'package:home33/screens/pages/settings_navigator/profile_page.dart';
import 'package:home33/screens/pages/settings_navigator/star_page.dart';
import 'package:home33/screens/pages/settings_navigator/therms_conditions.dart';
import 'package:home33/widgets/settings_cards.dart';
import 'package:home33/widgets/sized_box.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sized_boxx(h: 60),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Settings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          settings_card(
            icons_: Icons.person,
            txt: "Person",
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SettingsProfile()));
            },
          ),
          settings_card(
            icons_: Icons.person_add_alt_1_rounded,
            txt: "Accaunt",
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SettingsProfile()));
            },
          ),
          settings_card(
            icons_: Icons.star,
            txt: "Interests",
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SettingsStar()));
            },
          ),
          settings_card(
            icons_: Icons.notifications_outlined,
            txt: "Notification",
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SettingsNotification()));
            },
          ),
          settings_card(
            icons_: Icons.dark_mode,
            txt: "Dark Mode",
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SettingsDarkMode()));
            },
          ),
          settings_card(
            icons_: Icons.info_outline_rounded,
            txt: "Therms & Conditions",
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Settings_Therms_Conditions()));
            },
          ),
          settings_card(
            icons_: Icons.info_outline_rounded,
            txt: "About",
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SettingsAbout()));
            },
          ),
          settings_card(
            icons_: Icons.logout,
            txt: "Log Out",
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SettingsLogOut()));
            },
          ),
        ],
      ),
    );
  }
}
