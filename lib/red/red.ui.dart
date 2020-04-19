import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shopper/main.state.dart';
import 'package:shopper/red/red.dart';

class RedContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: _getRedUI()
    );
  }

  Widget _getRedUI() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        StoreConnector<AppState, VoidCallback>(
          converter: (store) => () => store.dispatch(new DecrementRedStateAction()),
          builder: (context, callback) {
            return RaisedButton.icon(
              color: Colors.red,
              onPressed: callback,
              icon: Icon(Icons.remove),
              label: Text('decrement'),
            );
          },
        ),
        StoreConnector<AppState, String>(
          converter: (store) => store.state.redState.count.toString(),
          builder: (context, count) {
            return Text(count);
          },
        ),
        StoreConnector<AppState, VoidCallback>(
          converter: (store) => () => store.dispatch(new IncrementRedStateAction()),
          builder: (context, callback) {
            return RaisedButton.icon(
              color: Colors.red,
              onPressed: callback,
              icon: Icon(Icons.add),
              label: Text('increment'),
            );
          },
        ),
      ],
    );
  }
}
