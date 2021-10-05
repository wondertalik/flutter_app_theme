import 'package:flutter/material.dart';
import 'package:flutter_app_theme/app.dart';
import 'package:flutter_app_theme/features/color_scheme/color_scheme.dart';
import 'package:flutter_app_theme/features/toggle_theme/toggle_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ColorSchemeCubit>(create: (_) => ColorSchemeCubit()),
        BlocProvider<ToggleThemeCubit>(create: (_) => ToggleThemeCubit()),
      ],
      child: const App(),
    ),
  );
}
