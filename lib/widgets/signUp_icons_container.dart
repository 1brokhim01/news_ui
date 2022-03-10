import 'package:flutter/material.dart';
import '../core/constants/cons_color.dart';

signUp_icon_container() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ConstColor().constColor_grey,
            ),
            height: 43,
            width: 40,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.email)),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ConstColor().constColor_grey,
            ),
            height: 43,
            width: 40,
            child: const Icon(Icons.g_mobiledata),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ConstColor().constColor_grey,
            ),
            height: 43,
            width: 40,
            child: const Icon(Icons.facebook),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ConstColor().constColor_grey,
            ),
            height: 43,
            width: 40,
            child: const Icon(Icons.connected_tv_rounded),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ConstColor().constColor_grey,
            ),
            height: 43,
            width: 40,
            child: const Icon(Icons.dynamic_form_outlined),
          ),
        ),
      ],
    );
