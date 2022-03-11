import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

cupertinoButton({String? txt, var onChanged}) {
  return Card(
    child: Row(
      children: [
        Text("$txt"),
        CupertinoSwitch(
          value: false,
          onChanged: onChanged,
        ),
      ],
    ),
  );
}
