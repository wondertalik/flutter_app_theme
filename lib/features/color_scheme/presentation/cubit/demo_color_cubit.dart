import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
part 'demo_color_state.dart';

class DemoColorCubit extends Cubit<DemoColorState> {
  DemoColorCubit() : super(const DemoColorState.light());

  void changeToLight() {
    emit(const DemoColorState.light());
  }

  void changeToDark() {
    emit(const DemoColorState.dark());
  }

  void changeToHighContrastLight() {
    emit(const DemoColorState.highContrastLight());
  }

  void changeToHighContrastDark() {
    emit(const DemoColorState.highContrastDark());
  }

  void changePrimaryColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme.copyWith(primary: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changePrimaryVariantColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme.copyWith(primaryVariant: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeSecondaryColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme.copyWith(secondary: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeSecondaryVariantColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme.copyWith(secondaryVariant: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeBackgroundColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme.copyWith(background: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeSurfaceColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme.copyWith(surface: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeErrorColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme.copyWith(error: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeOnPrimaryColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme.copyWith(onPrimary: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeOnSecondaryColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme.copyWith(onSecondary: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeOnBackgroundColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme.copyWith(onBackground: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeOnSurfaceColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme.copyWith(onSurface: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeOnErrorColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme.copyWith(onError: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }
}
