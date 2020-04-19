import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shopper/blue/blue.dart';
import 'package:shopper/main.state.dart';

class BlueContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: _getBlueUI(),
    );
  }

  Widget _getBlueUI() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        StoreConnector<AppState, VoidCallback>(
          converter: (store) => () => store.dispatch(new DecrementBlueStateAction()),
          builder: (context, callback) {
            return RaisedButton.icon(
              onPressed: callback,
              icon: Icon(Icons.remove),
              label: Text('decrement'),
            );
          },
        ),
        StoreConnector<AppState, String>(
          converter: (store) => store.state.blueState.count.toString(),
          builder: (context, count) {
            return Text(count);
          },
        ),
        StoreConnector<AppState, VoidCallback>(
          converter: (store) => () => store.dispatch(new IncrementBlueStateAction()),
          builder: (context, callback) {
            return RaisedButton.icon(
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
