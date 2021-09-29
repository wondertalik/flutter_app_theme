import 'package:flutter/material.dart';
import 'package:flutter_app_theme/app.dart';
import 'package:flutter_app_theme/demo/demo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<DemoColorCubit>(create: (_) => DemoColorCubit()),
      ],
      child: const App(),
    ),
  );
}
