import 'package:flutter/material.dart';
import 'package:series_apis/app.router.dart';

void main() {
  runApp(BreakingBad(
    appRouter: AppRouter(),
  ));
}

class BreakingBad extends StatelessWidget {
  final AppRouter appRouter;

  const BreakingBad({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
