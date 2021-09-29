// ignore_for_file: prefer_const_constructors

import 'package:flutter_app_theme/features/color_scheme/color_scheme.dart';
import 'package:test/test.dart';

void main() {
  group('DemoColorState', () {
    test('support value comparisons of DemoColorState.light', () {
      expect(DemoColorState.light(), DemoColorState.light());
    });

    test('support value comparisons of DemoColorState.dark', () {
      expect(DemoColorState.dark(), DemoColorState.dark());
    });

    test('support value comparisons of DemoColorState.highContrastLight', () {
      expect(DemoColorState.highContrastLight(),
          DemoColorState.highContrastLight());
    });

    test('support value comparisons of DemoColorState.highContrastDark', () {
      expect(
          DemoColorState.highContrastDark(), DemoColorState.highContrastDark());
    });
  });
}
