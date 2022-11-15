import 'package:flutter_bloc_architecture/domain/entities/quote_entity.dart';

class QuoteModel extends QuoteEntity {
  QuoteModel({
    required String quote,
    required String role,
    required String show,
  }) : super(quote: quote, role: role, show: show);

  factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
        quote: json['quote'],
        role: json['role'],
        show: json['show'],
      );
}
