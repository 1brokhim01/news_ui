import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:home33/screens/my_home_page.dart';
import 'package:home33/screens/pages/login/sign_up.dart';
import 'package:home33/service/currency_service.dart';
import 'package:home33/service/info_service.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult>? _connectivitySubscription;
  bool isConnected = false;
  ConnectivityResult connectivityResult = ConnectivityResult.none;
  @override
  void initState() {
    super.initState();
    checkConnection();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isConnected
          ? FutureBuilder(
              future: CurrencyInfo.getData(),
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text("ERORR"),
                  );
                } else {
                  return SignUp();
                }
              },
            )
          : Center(child: Text("internet yo'q !!!")),
    );
  }

  checkConnection() {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.wifi ||
          event == ConnectivityResult.mobile) {
        isConnected = true;

        setState(() {});
      } else {
        isConnected = false;

        setState(() {});
      }
    });
  }
}
