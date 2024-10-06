import 'package:flutter/material.dart';
import 'package:islami/core/colors_manager.dart';

class theme {
  static ThemeData lightTheme = ThemeData(
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showUnselectedLabels: true,
          elevation: 20,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          backgroundColor: ColorManager.goldColor),
      dividerColor: ColorManager.goldColor,
      cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        color: Colors.white,
        elevation: 14,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          titleMedium: TextStyle(
            fontSize: 19,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          )),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.red,
          )));
}
