import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter_bloc_architecture/data/models/quote_model.dart';

abstract class BaseAPIRemoteDatasource {
  Future<QuoteModel> getRandomMovieQuote();
}

class APIRemoteDatasource implements BaseAPIRemoteDatasource {
  @override
  Future<QuoteModel> getRandomMovieQuote() async {
    final Uri uri =
        Uri.parse('https://movie-quote-api.herokuapp.com/v1/quote/');

    final http.Response response = await http.get(
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
