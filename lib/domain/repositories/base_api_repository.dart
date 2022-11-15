import 'package:flutter_bloc_architecture/domain/entities/quote_entity.dart';

abstract class BaseAPIRepository {
  Future<QuoteEntity> getRandomMovieQuote();
}
