import 'package:expense_tracker/expenses.dart';
import 'package:flutter/material.dart';

var kColorSceme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 248, 149, 0),
);

var kDarkColorSceme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 83, 54, 10),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorSceme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorSceme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorSceme,
        appBarTheme: AppBarTheme().copyWith(
            backgroundColor: kColorSceme.onPrimaryContainer,
            foregroundColor: kColorSceme.primaryContainer),
        cardTheme: CardTheme().copyWith(
          color: kColorSceme.secondaryContainer,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorSceme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorSceme
                    .onSecondaryContainer, // overriden in appbar because foreground colors take precident.
                fontSize: 16,
              ),
            ),
      ),
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
