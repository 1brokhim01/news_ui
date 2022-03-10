import 'package:flutter/material.dart';
import 'package:home33/screens/pages/forgot_page.dart';
import 'package:home33/widgets/signUp_icons1.dart';

import '../../core/constants/m_p.dart';
import '../../widgets/signUp_icons_container.dart';
import '../../widgets/sized_box.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
              decoration: const InputDecoration(
                hintText: "Username",
              ),
            ),
            sized_box(30, 0),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Email",
              ),
            ),
            sized_box(30, 0),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: IconButton(
                    onPressed: () {}, icon: Icon(Icons.remove_red_eye_sharp)),
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/forgot");
                  },
                  child: const Text("Forgot password"),
                ),
              ],
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: const Text("Sign In"),
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
            signUp_icon_container1(),
            sized_box(25, 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an account? Register",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
