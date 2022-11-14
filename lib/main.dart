import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Bloc Architecture',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const HomePage(title: 'Home Page'),
      );
}

class HomePage extends StatelessWidget {
  const HomePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(elevation: 0, title: Text(title)),
        body: const Center(child: Text('Empty Page.')),
      );
}
