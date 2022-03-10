import 'package:flutter/material.dart';

sized_box(double h, double w) => 
SizedBox(
  height: h,
  width: w,
);

sized_boxx({double? h, double? w,var child}) => 
SizedBox(
  height: h,
  width: w,
  child: child,
);
