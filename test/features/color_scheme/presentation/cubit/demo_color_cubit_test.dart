import 'package:flutter_app_theme/features/color_scheme/color_scheme.dart';
import 'package:test/test.dart';

void main() {
  group('DemoColorCubit', () {
    test('initial state is DemoColorCubit.light', () async {
      // arrange
      final demoColorCubit = ColorSchemeCubit();

      // assert
      expect(demoColorCubit.state, ColorSchemeState.defaultScheme());
    });
  });
}
