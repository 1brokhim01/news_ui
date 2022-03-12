import 'package:flutter/material.dart';
import 'package:home33/core/constants/cons_color.dart';
import 'package:home33/widgets/sized_box.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({Key? key}) : super(key: key);

  @override
  _ChangePassState createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstColor().constColor_white,
        leading: BackButton(color: ConstColor().constColor_black),
        title: Text(
          "Account",
          style: TextStyle(color: ConstColor().constColor_black),
        ),
        actions: [
          TextButton(onPressed: (){}, child: const Text("Save"))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Current Password",
                      suffixIcon: Icon(Icons.remove_red_eye)
                    ),
                  ),
                ),
                sized_boxx(h: 40),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "New Password",
                      suffixIcon: Icon(Icons.remove_red_eye)
                    ),
                  ),
                ),
                sized_boxx(h: 40),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Confirm New Password",
                      suffixIcon: Icon(Icons.remove_red_eye)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
