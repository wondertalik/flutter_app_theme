import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_theme/features/toggle_theme/toggle_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../testable.dart';

class FakeToggleThemeState extends Fake implements ToggleThemeState {}

class MockToggleThemeCubit extends MockCubit<ToggleThemeState>
    implements ToggleThemeCubit {}

void main() {
  late ToggleThemeCubit toggleThemeCubit;

  setUp(() {
    toggleThemeCubit = MockToggleThemeCubit();
  });

  setUpAll(() {
    registerFallbackValue<ToggleThemeState>(FakeToggleThemeState());
    registerFallbackValue<Route<dynamic>>(ToggleThemePage.route());
  });

  group('ToggleThemePage', () {
    test('is routable', () {
      expect(ToggleThemePage.route(), isA<PageRouteBuilder>());
    });

    testWidgets('renders a ToggleThemePage content', (tester) async {
      when(() => toggleThemeCubit.state)
          .thenReturn(ToggleThemeState.defaultTheme());

      await tester.pumpWidget(
        makeTestableWidget(
          child: MultiBlocProvider(
            providers: [
              BlocProvider.value(
                value: toggleThemeCubit,
              )
            ],
            child: const ToggleThemePage(),
          ),
        ),
      );

      expect(find.byType(ToggleThemeContent), findsOneWidget);
    });
  });
}
