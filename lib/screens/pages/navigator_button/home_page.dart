import 'package:flutter/material.dart';
import 'package:home33/core/constants/cons_color.dart';
import 'package:home33/models/info_page.dart';
import 'package:home33/screens/pages/row_class/currency_page.dart';
import 'package:home33/screens/pages/row_class/row_news_page.dart';
import 'package:home33/service/info_service.dart';
import 'package:home33/widgets/elevated_button.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:home33/widgets/sized_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: my_appbar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    elevatedButton_func(
                      e_primary: ConstColor().constColor_black,
                      txt: "For You",
                      onTap: () {},
                    ),
                    sized_boxx(
                      w: 20,
                    ),
                    elevatedButton_func(
                        e_primary: ConstColor().constColor_black,
                        txt: "News",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RowNewsPage()));
                        }),
                    sized_boxx(
                      w: 20,
                    ),
                    elevatedButton_func(
                        e_primary: ConstColor().constColor_black,
                        txt: "Currency",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RowCurrencyPage()));
                        }),
                    sized_boxx(
                      w: 20,
                    ),
                    elevatedButton_func(
                      e_primary: ConstColor().constColor_black,
                      txt: "Polistics",
                      onTap: () {},
                    ),
                    sized_boxx(
                      w: 20,
                    ),
                    elevatedButton_func(
                      e_primary: ConstColor().constColor_black,
                      txt: "Enter",
                      onTap: () {},
                    ),
                    sized_boxx(
                      w: 20,
                    ),
                    elevatedButton_func(
                      e_primary: ConstColor().constColor_black,
                      txt: "Assign",
                      onTap: () {},
                    ),
                    sized_boxx(
                      w: 20,
                    ),
                  ],
                ),
              ),
              FutureBuilder(
                future: UsersInfo.getData(),
                builder: (context, AsyncSnapshot<List<Posts>> snapshot) {
                  if (!snapshot.hasData) {
                    print("Data kelayapti ...");
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  } else if (snapshot.hasError) {
                    print("Data keldi !!!");
                    return const Center(
                      child: Text("No Server"),
                    );
                  } else {
                    var data = snapshot.data;
                    print(data![0].body!.toString());
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Card(
                                child: Container(
                                  height: 140,
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      Container(
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.35,
                                          color: Colors.blue.shade50,
                                          child: Image.network(
                                            "https://source.unsplash.com/random/$index",
                                            fit: BoxFit.cover,
                                          )),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height,
                                        width: 210,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListView(
                                            children: [
                                              Text(
                                                  data[index].body!.toString()),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            itemCount: data.length,
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar my_appbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.pivot_table_chart_outlined,
            color: ConstColor().constColor_black,
          ),
          Text(
            "  News 24",
            style: TextStyle(
              color: ConstColor().constColor_black,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
