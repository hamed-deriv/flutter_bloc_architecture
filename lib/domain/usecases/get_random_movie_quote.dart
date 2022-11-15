import 'package:flutter_bloc_architecture/domain/entities/quote_entity.dart';
import 'package:flutter_bloc_architecture/domain/repositories/base_api_repository.dart';

class GetRandomMovieQuote {
  GetRandomMovieQuote(this.repository);

  final BaseAPIRepository repository;

  Future<QuoteEntity> execute() => repository.getRandomMovieQuote();
}
