import 'package:flutter/material.dart';
import 'package:t_store1/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:t_store1/utils/theme/custom_themes/text_theme.dart';
import 'package:t_store1/utils/theme/custom_themes/appbar_theme.dart';
import 'package:t_store1/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:t_store1/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:t_store1/utils/theme/custom_themes/chip_theme.dart';
import 'package:t_store1/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:t_store1/utils/theme/custom_themes/text_field_theme.dart';



class TAppTheme {
  TAppTheme._();

  static final TElevatedButtonTheme _elevatedButtonThemeInstance =
      TElevatedButtonTheme();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins-Black',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: _elevatedButtonThemeInstance.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightButtonSheetTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    chipTheme: TChipTheme.lightChipTheme,

    
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins-Black',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: _elevatedButtonThemeInstance.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkButtonSheetTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    chipTheme: TChipTheme.darkChipTheme,
  );
}