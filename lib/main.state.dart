import 'package:meta/meta.dart';
import 'package:shopper/blue/blue.dart';
import 'package:shopper/red/red.dart';

@immutable
class AppState {
  final RedState redState;
  final BlueState blueState;

  AppState(this.redState, this.blueState);

  factory AppState.initial() => new AppState(new RedState.initial(), new BlueState.initial());
}