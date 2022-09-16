import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
        backgroundColor: primary,
        elevation: 0,
      ),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),

      //Estilo de los elevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
              shape: const StadiumBorder(),
              elevation: 0)),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
      ));
}
