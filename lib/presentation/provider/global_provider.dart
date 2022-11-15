import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_bloc_architecture/domain/entities/quote_entity.dart';
import 'package:flutter_bloc_architecture/domain/usecases/get_random_movie_quote.dart';

class GlobalProvider extends ChangeNotifier {
  GlobalProvider(this.getRandomMovieQuote);

  static GlobalProvider of(BuildContext context, {dynamic listen = true}) =>
      Provider.of<GlobalProvider>(context, listen: listen);

  final GetRandomMovieQuote getRandomMovieQuote;
  QuoteEntity randomQuote = QuoteEntity.empty();

  Future<void> getMovieQuote() async {
    randomQuote = await getRandomMovieQuote.execute();

    notifyListeners();
  }
}
