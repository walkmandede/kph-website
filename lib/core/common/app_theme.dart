import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: "Poppins",
    primaryColor: const Color(0xFF556EE6), // Cool blue as primary
    scaffoldBackgroundColor: const Color(0xFFF1F3F6), // Soft light gray for background
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF556EE6), // Blue as primary color
      secondary: Color(0xFF4CAF50), // More muted green for secondary
      surface: Color(0xFFFFFFFF), // White card background
      error: Colors.red, // Error color remains red
      onPrimary: Colors.white, // Text on primary
      onSecondary: Colors.white, // Text on secondary
      onSurface: Color(0xFF333333), // Darker gray text for surface
      onError: Colors.white, // Text on error
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Color(0xFF333333)), // Dark text for headlines
      bodyLarge: TextStyle(fontSize: 16.0, color: Color(0xFF333333)), // Regular text in dark gray
      bodyMedium: TextStyle(fontSize: 14.0, color: Color(0xFF777777)), // Slightly lighter text for less important content
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF556EE6), // Blue AppBar
      foregroundColor: Colors.white,
      elevation: 4.0,
      iconTheme: IconThemeData(color: Colors.white),
      actionsIconTheme: IconThemeData(color: Colors.white),
      toolbarTextStyle: TextStyle(color: Colors.white),
      titleTextStyle: TextStyle(color: Colors.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFF556EE6), // Blue for buttons
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF556EE6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF4CAF50)), // Muted green for enabled border
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF556EE6)), // Blue for focused border
      ),
      hintStyle: TextStyle(color: Color(0xFF888888)), // Lighter gray for hints
    ),
    dividerColor: Colors.grey[300], // Lighter divider color
    cardColor: const Color(0xFFFFFFFF), // Slightly off-white card color
    cardTheme: const CardTheme(
      color: Colors.white,
      elevation: 6.0, // Increased elevation for shadow
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shadowColor: Color(0x11000000), // Subtle shadow color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0xFF556EE6), // Blue chips
      deleteIconColor: Colors.white,
      labelStyle: TextStyle(color: Colors.white),
      padding: EdgeInsets.all(4.0),
      shape: StadiumBorder(),
      secondaryLabelStyle: TextStyle(color: Colors.white),
      secondarySelectedColor: Color(0xFF4CAF50), // Secondary color for selected chips
      selectedColor: Color(0xFF4CAF50), // Muted green for selected chips
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF4CAF50), // Icon color in muted green
      size: 24,
    ),
    tabBarTheme: const TabBarTheme(
      indicatorColor: Color(0xFF556EE6), // Blue for tab indicators
      labelColor: Color(0xFF556EE6), // Blue for selected tabs
      unselectedLabelColor: Colors.grey, // Light gray for unselected tabs
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Color(0xFF333333)), // Dark gray for dialog titles
      contentTextStyle: TextStyle(color: Color(0xFF333333)), // Dark gray for content
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) return null;
        if (states.contains(MaterialState.selected)) return const Color(0xFF556EE6);
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) return null;
        if (states.contains(MaterialState.selected)) return const Color(0xFF556EE6);
        return null;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) return null;
        if (states.contains(MaterialState.selected)) return const Color(0xFF556EE6);
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) return null;
        if (states.contains(MaterialState.selected)) return const Color(0xFF556EE6);
        return null;
      }),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: "Poppins",
    primaryColor: const Color(0xFFBB86FC), // Muted purple for primary
    scaffoldBackgroundColor: const Color(0xFF001F3F), // Updated to blue background
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFBB86FC), // Muted purple as primary color
      secondary: Color(0xFF03DAC6), // Teal for secondary
      surface: Color(0xFF1F1F1F), // Dark surface
      error: Color(0xFFCF6679), // Muted red for errors
      onPrimary: Colors.black, // Text on primary
      onSecondary: Colors.black, // Text on secondary
      onSurface: Color(0xFFEEEEEE), // Light text on dark surface
      onError: Colors.black, // Text on error
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: Color(0xFFEEEEEE)), // Light text for headlines
      bodyLarge: TextStyle(fontSize: 16.0, color: Color(0xFFEEEEEE)), // Regular light text
      bodyMedium: TextStyle(fontSize: 14.0, color: Color(0xFFB0B0B0)), // Slightly muted light text
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF001F3F), // Updated to match blue background
      foregroundColor: Colors.white, // White text/icons
      elevation: 4.0,
      iconTheme: IconThemeData(color: Colors.white),
      actionsIconTheme: IconThemeData(color: Colors.white),
      toolbarTextStyle: TextStyle(color: Colors.white),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color(0xFFBB86FC), // Purple for buttons
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: const Color(0xFFBB86FC), // Purple background
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF03DAC6)), // Teal for enabled border
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFBB86FC)), // Purple for focused border
      ),
      hintStyle: TextStyle(color: Color(0xFFB0B0B0)), // Muted light gray for hints
    ),
    dividerColor: const Color(0xFF2C2C2C), // Darker gray divider
    cardColor: const Color(0xFF1F1F1F), // Dark card background
    cardTheme: const CardTheme(
      color: Color(0xFF1F1F1F),
      elevation: 4.0, // Subtle elevation for shadow
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shadowColor: Color(0x11000000), // Subtle shadow color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0xFFBB86FC), // Purple chips
      deleteIconColor: Colors.black,
      labelStyle: TextStyle(color: Colors.black),
      padding: EdgeInsets.all(4.0),
      shape: StadiumBorder(),
      secondaryLabelStyle: TextStyle(color: Colors.black),
      secondarySelectedColor: Color(0xFF03DAC6), // Teal for selected chips
      selectedColor: Color(0xFF03DAC6),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFF03DAC6), // Teal for icons
      size: 24,
    ),
    tabBarTheme: const TabBarTheme(
      indicatorColor: Color(0xFFBB86FC), // Purple for tab indicators
      labelColor: Color(0xFFBB86FC), // Purple for selected tabs
      unselectedLabelColor: Color(0xFFB0B0B0), // Muted gray for unselected
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: Color(0xFF1F1F1F), // Dark background for dialogs
      titleTextStyle: TextStyle(color: Color(0xFFEEEEEE), fontSize: 18),
      contentTextStyle: TextStyle(color: Color(0xFFB0B0B0), fontSize: 14),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) return Colors.grey;
        if (states.contains(MaterialState.selected)) return const Color(0xFFBB86FC); // Purple for selected checkboxes
        return Colors.grey;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) return Colors.grey;
        if (states.contains(MaterialState.selected)) return const Color(0xFFBB86FC); // Purple for selected radio
        return Colors.grey;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) return Colors.grey;
        if (states.contains(MaterialState.selected)) return const Color(0xFFBB86FC); // Purple thumb
        return Colors.grey;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) return Colors.grey;
        if (states.contains(MaterialState.selected)) return const Color(0xFFBB86FC); // Purple track
        return Colors.grey;
      }),
    ),
  );
}
