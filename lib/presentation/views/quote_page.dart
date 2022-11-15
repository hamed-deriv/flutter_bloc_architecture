import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_bloc_architecture/presentation/provider/global_provider.dart';

class QuotePage extends StatefulWidget {
  const QuotePage({Key? key}) : super(key: key);

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  late final GlobalProvider provider;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback(
      (Duration timeStamp) {
        provider = GlobalProvider.of(context, listen: false);
        provider.getMovieQuote();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final String quote = context.watch<GlobalProvider>().randomQuote.quote;

    return Scaffold(
      appBar: AppBar(elevation: 0, title: const Text('random Quote')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                quote,
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              child: const Text('Get Quote'),
              onPressed: provider.getMovieQuote,
            )
          ],
        ),
      ),
    );
  }
}
