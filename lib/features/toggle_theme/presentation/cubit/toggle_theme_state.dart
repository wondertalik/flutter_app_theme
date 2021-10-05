part of 'toggle_theme_cubit.dart';

class ToggleThemeState extends Equatable {
  const ToggleThemeState({this.toggleableActiveColor});

  ToggleThemeState._()
      : toggleableActiveColor = ThemeData().toggleableActiveColor;

  ToggleThemeState.defaultTheme() : this._();

  final Color? toggleableActiveColor;

  ToggleThemeState copyWith({Color? toggleableActiveColor}) {
    return ToggleThemeState(
        toggleableActiveColor:
            toggleableActiveColor ?? this.toggleableActiveColor);
  }

  @override
  List<Object?> get props => [toggleableActiveColor];
}
