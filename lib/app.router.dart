import 'package:flutter/material.dart';
import 'package:series_apis/presentation/screens/characters.screen.dart';

import 'constants/strings.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AllCharactersRoute:
        return MaterialPageRoute(builder: (_) => Charactersscreen());
    }
  }
}
