import 'package:flutter/material.dart';
import 'package:home33/core/constants/cons_color.dart';
import 'package:home33/screens/pages/navigator_button/home_page.dart';
import 'package:home33/screens/pages/navigator_button/saved_page.dart';
import 'package:home33/screens/pages/navigator_button/search_page.dart';
import 'package:home33/screens/pages/navigator_button/settings_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;
  List<Widget> _class = [];

  final keyHomePage = const PageStorageKey("home");
  final keySearchPage = const PageStorageKey("search");
  final keySavedPage = const PageStorageKey("saved");
  final keySettingsPage = const PageStorageKey("settings");

  @override
  void initState() {
    super.initState();
    _class = [
      HomePage(key: keyHomePage),
      SearchPage(key: keySearchPage),
      SavedPage(key: keySavedPage),
      Settings(key: keySavedPage),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _class[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: ConstColor().constColor_black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: ConstColor().constColor_black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.save_alt_rounded,
              color: ConstColor().constColor_black,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: ConstColor().constColor_black,
            ),
            label: "",
          ),
          
        ],
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
