import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import 'package:flutter_bloc_architecture/data/datasources/remote/api_remote_datasource.dart';
import 'package:flutter_bloc_architecture/data/repositories/api_repository.dart';
import 'package:flutter_bloc_architecture/domain/usecases/get_random_movie_quote.dart';
import 'package:flutter_bloc_architecture/presentation/provider/global_provider.dart';

class Injector extends StatelessWidget {
  const Injector({required this.router, Key? key}) : super(key: key);

  final Widget router;

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: <ChangeNotifierProvider<dynamic>>[
          ChangeNotifierProvider<GlobalProvider>(
            create: (BuildContext context) => GlobalProvider(
              GetRandomMovieQuote(
                APIRepository(APIRemoteDatasource(Client())),
              ),
            ),
          )
        ],
        child: router,
      );
}
