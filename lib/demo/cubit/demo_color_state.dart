part of 'demo_color_cubit.dart';

class DemoColorState extends Equatable {
  const DemoColorState(this.colorScheme);

  final ColorScheme colorScheme;

  DemoColorState copyWith([ColorScheme? colorScheme]) {
    return DemoColorState(colorScheme ?? this.colorScheme);
  }

  @override
  List<Object> get props => [colorScheme];
}
