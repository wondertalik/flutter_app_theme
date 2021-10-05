import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app_theme/features/toggle_theme/toggle_theme.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  late ToggleThemeCubit toggleThemeCubit;
  const tColor = Color(0xFFAEBCDF);

  setUp(() {
    toggleThemeCubit = ToggleThemeCubit();
  });

  group('ToggleThemeCubit', () {
    test('initial state is ToggleThemeCubit.light', () async {
      // arrange
      final toggleThemeCubit = ToggleThemeCubit();

      // assert
      expect(toggleThemeCubit.state, ToggleThemeState.defaultTheme());
    });

    blocTest<ToggleThemeCubit, ToggleThemeState>(
      'change toggleableActiveColor to custom color',
      build: () => toggleThemeCubit,
      act: (cubit) => cubit.changeToggleableActiveColor(tColor),
      expect: () => <ToggleThemeState>[const ToggleThemeState.custom(tColor)],
    );

    blocTest<ToggleThemeCubit, ToggleThemeState>(
      'change toggleableActiveColor to default color',
      build: () => toggleThemeCubit,
      seed: () => const ToggleThemeState.custom(tColor),
      act: (cubit) => cubit.changeToDefaultTheme(),
      expect: () => <ToggleThemeState>[ToggleThemeState.defaultTheme()],
    );
  });
}
