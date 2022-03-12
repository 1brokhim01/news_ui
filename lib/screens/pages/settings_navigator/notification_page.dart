import 'package:flutter/material.dart';
import 'package:home33/core/constants/cons_color.dart';
import 'package:home33/widgets/cupertino_button.dart';

class SettingsNotification extends StatefulWidget {
  const SettingsNotification({Key? key}) : super(key: key);

  @override
  _SettingsNotificationState createState() => _SettingsNotificationState();
}

class _SettingsNotificationState extends State<SettingsNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(color: ConstColor().constColor_black),
          title: const Text("Notification")),
      body: Column(
        children: const [
          // cupertinoButton(
          //   onChanged: () {},
          //   txt: "Push Notification",
          // ),
        ],
      ),
    );
  }
}
