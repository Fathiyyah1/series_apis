import 'package:flutter/material.dart';
import 'package:series_apis/presentation/screens/characters.screen.dart';

import 'constants/strings.dart';
import 'presentation/screens/characters.details.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AllCharactersRoute:
        return MaterialPageRoute(builder: (_) => Charactersscreen());

      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharactersDetailsScreen());
    }
  }
}
