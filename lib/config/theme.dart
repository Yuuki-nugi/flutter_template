import 'package:flutter/material.dart';

ThemeData getTheme() {
  const primaryColor = Color(0xFFFF5722);

  return ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: primaryColor));
}
