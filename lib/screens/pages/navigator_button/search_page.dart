import 'package:flutter/material.dart';
import 'package:home33/widgets/sized_box.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          sized_boxx(h: 60),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(25)
                ),
                hintText: "Search",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                ),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 