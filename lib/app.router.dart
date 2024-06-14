import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:series_apis/business_logic/cubit/characters_cubit.dart';
import 'package:series_apis/data/repository/CharactersRepository.dart';
import 'package:series_apis/data/web_services/characters.web.services.dart';
import 'package:series_apis/presentation/screens/characters.screen.dart';
import 'constants/strings.dart';
import 'presentation/screens/characters.details.dart';

class AppRouter {
  late Charactersrepository charactersrepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersrepository = Charactersrepository(CharactersWebServices());
    charactersCubit = CharactersCubit(charactersrepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AllCharactersRoute:
        return MaterialPageRoute(
            //tree materialpageRoute > BlocProvider > screen
            builder: (_) => BlocProvider(
                  create: (BuildContext context) =>
                      CharactersCubit(charactersrepository),
                  child: Charactersscreen(),
                ));

      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharactersDetailsScreen());
    }
  }
}
