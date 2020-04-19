import 'package:meta/meta.dart';

@immutable
class RedState {
  final int count;

  RedState(this.count);

  factory RedState.initial() => new RedState(0);
}