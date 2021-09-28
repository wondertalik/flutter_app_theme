import 'package:flutter/painting.dart';

extension StringExtension on String {
  Color toColor() {
    return Color(int.parse(substring(1, 7), radix: 16) + 0xFF000000);
  }
}
