import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

cupertinoButton({String? txt, var onChanged}) {
  final List _falses = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  var reverse = true;
  var indexx;
  for (var index in _falses) {
    indexx = index;
  }
  return Card(
    child: Row(
      children: [
        Text("$txt"),
        CupertinoSwitch(
          value: _falses[indexx],
          onChanged: (reverse) {
            for (var index in _falses) {
            reverse != indexx;
              
            }
          },
        ),
      ],
    ),
  );
  }
