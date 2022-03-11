import 'package:flutter/material.dart';
import 'package:home33/service/currency_service.dart';
import '../../../service/info_service.dart';

class RowCurrencyPage extends StatefulWidget {
  const RowCurrencyPage({Key? key}) : super(key: key);

  @override
  _RowCurrencyPageState createState() => _RowCurrencyPageState();
}

class _RowCurrencyPageState extends State<RowCurrencyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue.shade100,
            child: FutureBuilder(
              future: Future.wait(
                [
                  UsersInfo.getData(),
                  CurrencyInfo.getData(),
                ],
              ),
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text("Error"),
                  );
                } else {
                  var data = snapshot.data;
                  return ListView.builder(
                    itemCount: data!.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                        width: double.infinity,
                        child: Card(
                          child: Text(data[1][index].toString()),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
