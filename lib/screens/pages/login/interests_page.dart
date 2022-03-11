import 'package:flutter/material.dart';
import 'package:home33/widgets/sized_box.dart';

class InterestsPage extends StatefulWidget {
  const InterestsPage({Key? key}) : super(key: key);

  @override
  _InterestsPageState createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sized_box(80, 0),
            const Text(
              "Interests",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0.5,
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      child: Row(
                        children: [
                          interests(
                            name: "hello",
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            sized_box(50, 0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                sized_boxx(
                  h: 40,
                  w: 180,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
                    },
                    child: const Text("Start"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  interests({String? name}) {
    return Row(
      children: [
        Text("${name}"),
      ],
    );
  }
}
