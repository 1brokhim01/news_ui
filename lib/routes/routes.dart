import 'package:flutter/material.dart';
import 'package:home33/screens/my_home_page.dart';
import 'package:home33/screens/my_page.dart';
import 'package:home33/screens/pages/login/forgot_page.dart';
import 'package:home33/screens/pages/login/interests_page.dart';
import 'package:home33/screens/pages/login/sign_up.dart';
import 'package:home33/screens/pages/login/signIn.dart';
import 'package:home33/screens/pages/login/therms_info_page.dart';

class MyRoutes {
  Route? onGenerateRoute(RouteSettings s) {
    switch (s.name) {
      case "/.":
        return MaterialPageRoute(builder: (context) => const MyPage());
      case "/":
        return MaterialPageRoute(builder: (context) => const MyHomePage());
      case "/signUp":
        return MaterialPageRoute(builder: (context) => const SignUp());
      case "/signIn":
        return MaterialPageRoute(builder: (context) => const SignInPage());
      case "/forgot":
        return MaterialPageRoute(builder: (context) => const ForgotPage());
      case "/therms":
        return MaterialPageRoute(builder: (context) => const ThermsInfoPage());
      case "/interests":
        return MaterialPageRoute(builder: (context) => const InterestsPage());
    }
  }
}
