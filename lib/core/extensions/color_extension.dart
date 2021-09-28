import 'package:flutter/painting.dart';

extension ColorExtension on Color {
  String toHexString() {
    return '#${value.toRadixString(16).padLeft(8, '0').substring(2, 8)}';
  }
}
