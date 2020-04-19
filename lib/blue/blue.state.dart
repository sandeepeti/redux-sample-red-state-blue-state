import 'package:meta/meta.dart';

@immutable
class BlueState {
  final int count;

  BlueState(this.count);

  factory BlueState.initial() => new BlueState(0);
}