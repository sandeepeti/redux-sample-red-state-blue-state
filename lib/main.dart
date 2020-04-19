import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'main.reducer.dart';
import 'main.state.dart';
import 'red/red.dart';
import 'blue/blue.dart';

void main() {
  final store = Store<AppState>(appReducer, initialState: AppState.initial());

  runApp(RedStateBlueStateApp(
    title: 'Red State Blue State Redux App',
    store: store
  ));
}

class RedStateBlueStateApp extends StatelessWidget {
  final Store<AppState> store;
  final String title;

  RedStateBlueStateApp({Key key, this.store, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RedContainer(),
                BlueContainer()
              ],
            ),
          )
        ),
      ),
    );
  }
}
