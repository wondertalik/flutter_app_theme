import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'toggle_theme_state.dart';

class ToggleThemeCubit extends Cubit<ToggleThemeState> {
  ToggleThemeCubit() : super(ToggleThemeState.defaultTheme());

  void changeToggleableActiveColor(Color toggleableActiveColor) {
    emit(state.copyWith(toggleableActiveColor: toggleableActiveColor));
  }
}
