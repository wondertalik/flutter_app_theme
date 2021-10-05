import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
part 'color_scheme_state.dart';

class ColorSchemeCubit extends Cubit<ColorSchemeState> {
  ColorSchemeCubit() : super(ColorSchemeState.defaultScheme());

  void changeDefaultScheme() {
    emit(ColorSchemeState.defaultScheme());
  }

  void changeToLight() {
    emit(const ColorSchemeState.light());
  }

  void changeToDark() {
    emit(const ColorSchemeState.dark());
  }

  void changeToHighContrastLight() {
    emit(const ColorSchemeState.highContrastLight());
  }

  void changeToHighContrastDark() {
    emit(const ColorSchemeState.highContrastDark());
  }

  void changePrimaryColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme?.copyWith(primary: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changePrimaryVariantColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme?.copyWith(primaryVariant: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeSecondaryColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme?.copyWith(secondary: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeSecondaryVariantColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme?.copyWith(secondaryVariant: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeBackgroundColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme?.copyWith(background: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeSurfaceColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme?.copyWith(surface: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeErrorColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme?.copyWith(error: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeOnPrimaryColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme?.copyWith(onPrimary: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeOnSecondaryColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme?.copyWith(onSecondary: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeOnBackgroundColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme?.copyWith(onBackground: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeOnSurfaceColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme?.copyWith(onSurface: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }

  void changeOnErrorColor(Color color) {
    emit(state.copyWith(
      colorScheme: state.colorScheme?.copyWith(onError: color),
      schemeVariant: ColorSchemeVariant.custom,
    ));
  }
}
