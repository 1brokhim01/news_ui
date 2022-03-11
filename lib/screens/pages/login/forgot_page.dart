import 'package:flutter/material.dart';
import 'package:home33/widgets/signUp_icons1.dart';
import '../../../core/constants/m_p.dart';
import '../../../widgets/sized_box.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: M_P().extra_big,
        child: Column(
          children: [
            sized_box(70, 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 135,
                  width: 90,
                  child: Image.asset("assets/images/logo.png"),
                ),
              ],
            ),
            sized_box(30, 0),
            const Text(
              "Enter your email to be sent a reset password\nlink.",
              style: TextStyle(fontSize: 15),
            ),
            sized_box(30, 0),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Email",
              ),
            ),
            sized_box(30, 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                sized_boxx(
                  h: 40,
                  w: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/interests");
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: const Text("Reset"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
