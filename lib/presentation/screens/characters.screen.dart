import 'package:flutter/material.dart';
import 'package:series_apis/constants/colors.dart';

class Charactersscreen extends StatelessWidget {
  const Charactersscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsDesign.light,
      ),
      body: SingleChildScrollView(
          // child: ConstrainedBox(constraints: BoxConstraints(   IntrinsicHeight(),),
          ),
    );
  }
}
