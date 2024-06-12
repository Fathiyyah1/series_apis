import 'package:flutter/material.dart';
import 'package:series_apis/app.router.dart';

void main() {
  runApp(breakingbad());
}

class breakingbad extends StatelessWidget {
  late final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
