import 'package:flutter/material.dart';
import 'package:home33/core/constants/cons_color.dart';
import 'package:home33/screens/pages/settings_navigator/acc_change_pass.dart';
import 'package:home33/widgets/sized_box.dart';

class SettingsAccount extends StatefulWidget {
  const SettingsAccount({Key? key}) : super(key: key);

  @override
  _SettingsAccountState createState() => _SettingsAccountState();
}

class _SettingsAccountState extends State<SettingsAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstColor().constColor_white,
        title: const Text("Account"),
        leading: BackButton(color: ConstColor().constColor_black),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Email",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    sized_boxx(
                      h: 40,
                      w: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter your email ...",
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    sized_boxx(
                      h: 50,
                      w: 359,
                      child: ListTile(
                        leading: Icon(Icons.lock_outline_sharp),
                        title: const Text("Change Password"),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChangePass(),
                              ),
                            );
                          },
                          icon: Icon(Icons.chevron_right_rounded),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
