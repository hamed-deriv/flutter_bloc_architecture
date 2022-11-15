import 'package:flutter_bloc_architecture/domain/entities/quote_entity.dart';
import 'package:flutter_bloc_architecture/domain/repositories/api_repository.dart';

class GetRandomMovieQuote {
  GetRandomMovieQuote(this.repository);

  final APIRepository repository;

  Future<QuoteEntity> execute() => repository.getRandomMovieQuote();
}
