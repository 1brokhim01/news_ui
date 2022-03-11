import 'package:flutter/material.dart';
import 'package:home33/core/constants/m_p.dart';
import 'package:home33/screens/pages/login/therms_info_page.dart';
import 'package:home33/widgets/signUp_icons_container.dart';
import 'package:home33/widgets/sized_box.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _userName_Controller = TextEditingController();
  TextEditingController _email_Controller = TextEditingController();
  TextEditingController _password_Controller = TextEditingController();
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
            TextFormField(
              controller: _userName_Controller,
              decoration: const InputDecoration(
                hintText: "Username",
              ),
            ),
            sized_box(30, 0),
            TextFormField(
              controller: _email_Controller,
              decoration: const InputDecoration(
                hintText: "Email",
              ),
            ),
            sized_box(30, 0),
            TextFormField(
              controller: _password_Controller,
              decoration: const InputDecoration(
                hintText: "Password",
              ),
            ),
            sized_box(70, 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                sized_boxx(
                  h: 40,
                  w: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.restorablePushReplacementNamed(
                          context, "/signIn");
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: const Text("Sign Up"),
                  ),
                ),
              ],
            ),
            sized_box(40, 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("----------- or sign in with -----------"),
              ],
            ),
            sized_box(30, 0),
            signUp_icon_container(),
            sized_box(25, 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "By signing up to News24 you are accepting our",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThermsInfoPage()));
                },
                child: const Text(
                  "Terms & Conditions",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
