import 'dart:convert';

import 'package:http/http.dart';

import 'package:flutter_bloc_architecture/data/models/quote_model.dart';

abstract class BaseAPIRemoteDatasource {
  Future<QuoteModel> getRandomMovieQuote();
}

class APIRemoteDatasource implements BaseAPIRemoteDatasource {
  APIRemoteDatasource(this.httpClient);

  final Client httpClient;

  @override
  Future<QuoteModel> getRandomMovieQuote() async {
    final Uri uri =
        Uri.parse('https://movie-quote-api.herokuapp.com/v1/quote/');

    final Response response = await httpClient.get(
      uri,
      headers: <String, String>{'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return QuoteModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('$runtimeType error: ${response.statusCode}');
    }
  }
}
