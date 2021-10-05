// ignore_for_file: prefer_const_constructors

import 'package:flutter/painting.dart';
import 'package:flutter_app_theme/features/toggle_theme/toggle_theme.dart';
import 'package:test/test.dart';

void main() {
  group('ToggleThemeState', () {
    test('support value comparisons of ToggleThemeState.defaultTheme', () {
      expect(ToggleThemeState.defaultTheme(), ToggleThemeState.defaultTheme());
    });

    test('support value comparisons of ToggleThemeState.custom', () {
      const tColor = Color(0xFFAEBCDF);

      expect(ToggleThemeState.custom(tColor), ToggleThemeState.custom(tColor));
    });

    test('support value comparisons of ToggleThemeState.copyWith', () {
      expect(ToggleThemeState.defaultTheme(),
          ToggleThemeState.defaultTheme().copyWith());
    });
  });
}
