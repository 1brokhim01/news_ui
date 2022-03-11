import 'package:flutter/material.dart';

ElevatedButton elevatedButton_func({String? txt,Color? e_primary,var onTap}) => ElevatedButton(
      onPressed: onTap,
      child: Text("$txt"),
      style: ElevatedButton.styleFrom(
        primary: e_primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        )
      ),
    );
