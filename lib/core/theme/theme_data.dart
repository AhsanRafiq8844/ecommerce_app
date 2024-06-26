import 'package:ecommerce_app/core/color/colors.dart';
import 'package:ecommerce_app/core/utilities/enums.dart';
import 'package:flutter/material.dart';

final appThemeData = {
  AppTheme.lightTheme: ThemeData(
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: ColorManager.orangeLight),
    focusColor: ColorManager.orangeLight,
    primaryColorLight: ColorManager.orangeLight,
    fontFamily: "Roboto",
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManager.light,
      iconTheme: IconThemeData(
        color: ColorManager.dark,
      ),
    ),
    scaffoldBackgroundColor: ColorManager.light,
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: ColorManager.light),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorManager.white,
      elevation: 0.3,
      selectedItemColor: ColorManager.orangeLight,
      selectedIconTheme: IconThemeData(color: ColorManager.orangeLight),
      unselectedIconTheme: IconThemeData(color: ColorManager.grey),
      unselectedItemColor: ColorManager.grey,
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: ColorManager.dark),
    inputDecorationTheme: const InputDecorationTheme(
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.orangeLight),
      ),
      prefixIconColor: ColorManager.orangeLight,
      filled: true,
      fillColor: ColorManager.white,
      labelStyle: TextStyle(color: ColorManager.grey, height: 4, fontSize: 20),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorManager.orangeLight,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorManager.orangeLight),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(ColorManager.orangeLight),
      ),
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: ColorManager.orangeLight),
    buttonTheme: const ButtonThemeData(buttonColor: ColorManager.orangeLight),
    indicatorColor: ColorManager.orangeLight,
    tabBarTheme: TabBarTheme(
        overlayColor: WidgetStateProperty.all(
            ColorManager.orangeLight.withOpacity(0.1)),
        labelColor: ColorManager.orangeLight,
        unselectedLabelColor: ColorManager.grey),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(ColorManager.orangeLight),
        overlayColor: WidgetStateProperty.all(
            ColorManager.orangeLight.withOpacity(0.1)),
      ),
    ),
  ),
  AppTheme.darkTheme: ThemeData(
    textTheme: const TextTheme(
        titleMedium: TextStyle(color: ColorManager.light),
        titleSmall: TextStyle(color: ColorManager.dark)),
    brightness: Brightness.dark,
    iconTheme: const IconThemeData(color: ColorManager.orangeDark),
    focusColor: ColorManager.orangeDark,
    primaryColorLight: ColorManager.orangeDark,
    fontFamily: "Roboto",
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManager.dark,
      iconTheme: IconThemeData(
        color: ColorManager.light,
      ),
    ),
    cardColor: ColorManager.green,
    scaffoldBackgroundColor: ColorManager.dark,
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: ColorManager.dark),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: ColorManager.dark,
      elevation: 0.3,
      selectedItemColor: ColorManager.orangeDark,
      selectedIconTheme: IconThemeData(color: ColorManager.orangeDark),
      unselectedIconTheme: IconThemeData(color: ColorManager.grey),
      unselectedItemColor: ColorManager.white,
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: ColorManager.light),
    inputDecorationTheme: const InputDecorationTheme(
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.light),
      ),
      prefixIconColor: ColorManager.orangeDark,
      filled: true,
      fillColor: ColorManager.dark,
      labelStyle: TextStyle(color: ColorManager.white, height: 4, fontSize: 20),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: ColorManager.orangeDark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorManager.orangeDark),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(ColorManager.orangeDark),
      ),
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: ColorManager.orangeDark),
    buttonTheme: const ButtonThemeData(buttonColor: ColorManager.orangeDark),
    indicatorColor: ColorManager.orangeDark,
    tabBarTheme: TabBarTheme(
        overlayColor:
            WidgetStateProperty.all(ColorManager.orangeDark.withOpacity(0.1)),
        labelColor: ColorManager.orangeDark,
        unselectedLabelColor: ColorManager.grey),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: WidgetStateProperty.all(
            const BorderSide(color: ColorManager.orangeDark)),
        foregroundColor: WidgetStateProperty.all(ColorManager.orangeDark),
        overlayColor:
            WidgetStateProperty.all(ColorManager.orangeDark.withOpacity(0.1)),
      ),
    ),
  ),
};
