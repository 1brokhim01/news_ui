import 'package:flutter/material.dart';
import 'package:home33/widgets/sized_box.dart';

settings_card({IconData? icons_, String? txt,var onPress}) {
  return SizedBox(
    height: 70,
    width: double.infinity,
    child: Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icons_),
              sized_boxx(
                w: 15,
              ),
              Text("$txt"),
            ],
          ),
          IconButton(
            onPressed: onPress,
            icon: Icon(Icons.chevron_right_sharp),
          ),
        ],
      ),
    ),
  );
}
