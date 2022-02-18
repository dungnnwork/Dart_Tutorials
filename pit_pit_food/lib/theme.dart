import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pit_pit_food/constants.dart';

ThemeData theme() {
  return ThemeData(
    backgroundColor: const Color(0XFFF2F2F2),
    fontFamily: 'Muli',
    scaffoldBackgroundColor: Colors.green,
    textTheme: TextTheme(),
    appBarTheme: AppBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    elevation: 0,
    color: Colors.green,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(color: Colors.black),
    centerTitle: true,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyText1: TextStyle(color: kTitleTextColor),
    bodyText2: TextStyle(color: kTitleTextColor),
  );
}
