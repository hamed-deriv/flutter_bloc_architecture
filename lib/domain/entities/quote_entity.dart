class QuoteEntity {
  QuoteEntity({
    required this.quote,
    required this.role,
    required this.show,
  });

  factory QuoteEntity.fromJson(Map<String, dynamic> json) => QuoteEntity(
        quote: json['quote'],
        role: json['role'],
        show: json['show'],
      );

  factory QuoteEntity.empty() => QuoteEntity(quote: '', role: '', show: '');

  final String quote;
  final String role;
  final String show;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'quote': quote,
        'role': role,
        'show': show,
      };
}
