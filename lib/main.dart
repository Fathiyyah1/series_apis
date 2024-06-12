import 'package:flutter/material.dart';
import 'package:series_apis/app.router.dart';

void main() {
  runApp(breakingbad(
    appRouter: AppRouter(),
  ));
}

class breakingbad extends StatelessWidget {
  final AppRouter appRouter;

  const breakingbad({Key? key, required this.appRouter}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
