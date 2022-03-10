import 'package:flutter/material.dart';

class ThermsInfoPage extends StatefulWidget {
  const ThermsInfoPage({Key? key}) : super(key: key);

  @override
  _ThermsInfoPageState createState() => _ThermsInfoPageState();
}

class _ThermsInfoPageState extends State<ThermsInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
    );
  }
}
