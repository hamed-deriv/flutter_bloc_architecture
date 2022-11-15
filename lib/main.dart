import 'package:flutter/material.dart';

import 'package:flutter_bloc_architecture/injector.dart';
import 'package:flutter_bloc_architecture/presentation/views/quote_page.dart';

void main() => runApp(const Injector(router: App()));

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Bloc Architecture',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const QuotePage(),
      );
}
