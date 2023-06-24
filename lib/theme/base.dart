import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

final textTheme = TextTheme(
  headlineLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 32.0.sp,
    height: (38.0 / 32.0).sp,
    wordSpacing: (32.0 / 100.0).sp,
    fontWeight: FontWeight.w700,
  ),
  bodyLarge: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 18.0.sp,
    height: (20.0 / 18.0).sp,
    wordSpacing: (18.0 / 100.0).sp,
    fontWeight: FontWeight.w400,
  ),
  bodyMedium: TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 16.0.sp,
    height: (20.0 / 16.0).sp,
    wordSpacing: (16.0 / 100.0).sp,
    fontWeight: FontWeight.w400,
  ),
);

final base = ThemeData(
  useMaterial3: true,
  textTheme: textTheme,
  fontFamily: 'SF-Pro-Display',
);
