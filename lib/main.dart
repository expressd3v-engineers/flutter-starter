import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Starter Application',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: ,
    );
  }
}