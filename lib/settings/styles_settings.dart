import 'package:flutter/material.dart';

class StylesSettings {
  static ThemeData LightTheme(BuildContext context){
    final theme = ThemeData.light();
    return theme.copyWith(
      colorScheme: Theme.of(context).colorScheme.copyWith(
        primary: Color.fromARGB(253, 4, 251, 242)
      )
    );
  }

  static ThemeData DarkTheme(BuildContext context){
    final theme = ThemeData.dark();
    return theme.copyWith(
      colorScheme: Theme.of(context).colorScheme.copyWith(
        primary: Color.fromARGB(252, 138, 65, 247)
      )
    );
  }
}