import 'package:redux/redux.dart';
import 'red.dart';

final redReducer = combineReducers<RedState>([
  new TypedReducer<RedState, IncrementRedStateAction>(_incrementRedState),
  new TypedReducer<RedState, DecrementRedStateAction>(_decrementRedState)
]);

RedState _incrementRedState(RedState redState, IncrementRedStateAction action) {
  return new RedState(redState.count + 1);
}

RedState _decrementRedState(RedState redState, DecrementRedStateAction action) {
  return new RedState(redState.count - 1);
}