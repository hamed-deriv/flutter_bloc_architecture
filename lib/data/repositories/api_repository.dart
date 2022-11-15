import 'package:flutter_bloc_architecture/data/datasources/remote/api_remote_datasource.dart';
import 'package:flutter_bloc_architecture/domain/entities/quote_entity.dart';
import 'package:flutter_bloc_architecture/domain/repositories/base_api_repository.dart';

class APIRepository implements BaseAPIRepository {
  APIRepository(this.datasource);

  final APIRemoteDatasource datasource;

  @override
  Future<QuoteEntity> getRandomMovieQuote() async =>
      datasource.getRandomMovieQuote();
}
