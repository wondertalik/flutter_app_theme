// ignore_for_file: prefer_const_constructors

import 'package:flutter_app_theme/features/color_scheme/color_scheme.dart';
import 'package:test/test.dart';

void main() {
  group('DemoColorState', () {
    test('support value comparisons of DemoColorState.light', () {
      expect(ColorSchemeState.light(), ColorSchemeState.light());
    });

    test('support value comparisons of DemoColorState.dark', () {
      expect(ColorSchemeState.dark(), ColorSchemeState.dark());
    });

    test('support value comparisons of DemoColorState.highContrastLight', () {
      expect(ColorSchemeState.highContrastLight(),
          ColorSchemeState.highContrastLight());
    });

    test('support value comparisons of DemoColorState.highContrastDark', () {
      expect(ColorSchemeState.highContrastDark(),
          ColorSchemeState.highContrastDark());
    });
  });
}
