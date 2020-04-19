import 'package:redux/redux.dart';
import 'blue.dart';

final blueReducer = combineReducers<BlueState>([
  new TypedReducer<BlueState, IncrementBlueStateAction>(_incrementBlueState),
  new TypedReducer<BlueState, DecrementBlueStateAction>(_decrementBlueState)
]);

BlueState _incrementBlueState(BlueState blueState, IncrementBlueStateAction action) {
  return new BlueState(blueState.count + 1);
}

BlueState _decrementBlueState(BlueState blueState, DecrementBlueStateAction action) {
  return new BlueState(blueState.count - 1);
}