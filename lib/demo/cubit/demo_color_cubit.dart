import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'demo_color_state.dart';

class DemoColorCubit extends Cubit<DemoColorState> {
  DemoColorCubit() : super(const DemoColorState(ColorScheme.light()));

  void changePrimaryColor(Color color) {
    emit(state.copyWith(state.colorScheme.copyWith(primary: color)));
  }

  void changePrimaryVariantColor(Color color) {
    emit(state.copyWith(state.colorScheme.copyWith(primaryVariant: color)));
  }

  void changeSecondaryColor(Color color) {
    emit(state.copyWith(state.colorScheme.copyWith(secondary: color)));
  }

  void changeSecondaryVariantColor(Color color) {
    emit(state.copyWith(state.colorScheme.copyWith(secondaryVariant: color)));
  }

  void changeBackgroundColor(Color color) {
    emit(state.copyWith(state.colorScheme.copyWith(background: color)));
  }

  void changeSurfaceColor(Color color) {
    emit(state.copyWith(state.colorScheme.copyWith(surface: color)));
  }

  void changeErrorColor(Color color) {
    emit(state.copyWith(state.colorScheme.copyWith(error: color)));
  }

  void changeOnPrimaryColor(Color color) {
    emit(state.copyWith(state.colorScheme.copyWith(onPrimary: color)));
  }

  void changeOnSecondaryColor(Color color) {
    emit(state.copyWith(state.colorScheme.copyWith(onSecondary: color)));
  }

  void changeOnBackgroundColor(Color color) {
    emit(state.copyWith(state.colorScheme.copyWith(onBackground: color)));
  }

  void changeOnSurfaceColor(Color color) {
    emit(state.copyWith(state.colorScheme.copyWith(onSurface: color)));
  }

  void changeOnErrorColor(Color color) {
    emit(state.copyWith(state.colorScheme.copyWith(onError: color)));
  }
}
