import 'dart:developer';

import 'package:flutter/material.dart';

import '../constants/colors.dart';

GestureDetector boxIcon(IconData icon) => GestureDetector(
      onTap: () => log('Icon Pressed'),
      child: ColoredBox(
          color: primaryColor,
          child: Container(
            color: primaryColor,
            child: SizedBox(
              height: 26,
              width: 26,
              child: Icon(
                icon,
                color: secondaryColor,
              ),
            ),
          )),
    );
