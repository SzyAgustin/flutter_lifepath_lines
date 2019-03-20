import 'package:flutter/material.dart';
import 'background_curves.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              BackgroundCurves(),
            ],
          ),
        ),
      ),
    );
  }
}
