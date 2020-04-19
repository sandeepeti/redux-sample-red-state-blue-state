import 'package:shopper/blue/blue.dart';
import 'package:shopper/main.state.dart';
import 'package:shopper/red/red.dart';

AppState appReducer(AppState state, action) => new AppState(
  redReducer(state.redState, action),
  blueReducer(state.blueState, action)
);