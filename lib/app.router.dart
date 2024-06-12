import 'package:flutter/material.dart';
import 'package:series_apis/presentation/screens/characters.screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Charactersscreen());
    }
  }
}
