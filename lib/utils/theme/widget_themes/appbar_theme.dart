import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/colors.dart';

class FAppBarTheme {
  FAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 50,
    centerTitle: true,
    backgroundColor: FColors.white,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: FColors.black, size: FSizes.iconMd),
    actionsIconTheme: IconThemeData(color: FColors.black, size: FSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: FColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 50,
    centerTitle: true,
    backgroundColor: Colors.black,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: FColors.black, size: FSizes.iconMd),
    actionsIconTheme: IconThemeData(color: FColors.white, size: FSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: FColors.white),
  );
}
