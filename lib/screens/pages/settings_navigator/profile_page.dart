import 'package:flutter/material.dart';
import 'package:home33/core/constants/cons_color.dart';
import 'package:home33/widgets/settings_cards.dart';
import 'package:home33/widgets/sized_box.dart';

class SettingsProfile extends StatefulWidget {
  const SettingsProfile({Key? key}) : super(key: key);

  @override
  _SettingsProfileState createState() => _SettingsProfileState();
}

class _SettingsProfileState extends State<SettingsProfile> {
  TextEditingController _controllerTxt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstColor().constColor_white,
        leading: BackButton(color: ConstColor().constColor_black),
        title: Text("Profile",
            style: TextStyle(color: ConstColor().constColor_black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: ConstColor().constColor_black,
                  child: Icon(
                    Icons.person,
                    size: 80,
                    color: ConstColor().constColor_white,
                  ),
                ),
              ],
            ),
            sized_boxx(
              h: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Change Capture",
                    style: TextStyle(
                      color: ConstColor().constColor_black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                sized_boxx(
                  w: 20,
                ),
                SizedBox(
                  height: 30,
                  width: 250,
                  child: TextFormField(
                    controller: _controllerTxt,
                    decoration: const InputDecoration(
                      hintText: "Enter the username",
                    ),
                  ),
                ),
                sized_boxx(
                  h: 50,
                ),
              ],
            ),
            sized_boxx(
              h: 50,
            ),
            const Text(
              "Link Account",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            SizedBox(
              height: 80,
              width: MediaQuery.of(context).size.width * 0.95,
              child: settings_card(
                icons_: Icons.facebook,
                onPress: () {},
                txt: "Facebook",
              ),
            ),
            SizedBox(
              height: 80,
              width: MediaQuery.of(context).size.width * 0.95,
              child: settings_card(
                icons_: Icons.electric_bike_rounded,
                onPress: () {},
                txt: "Twitter",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
