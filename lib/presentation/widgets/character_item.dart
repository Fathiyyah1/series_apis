import 'package:flutter/material.dart';
import 'package:series_apis/constants/colors.dart';

import '../../data/models/characters.dart';

class CharacterItem extends StatelessWidget {
  final Character character;

  const CharacterItem({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
          color: ColorsDesign.light, borderRadius: BorderRadius.circular(8)),
      child: Container(
        color: ColorsDesign.lightDark,
      ),
    );
  }
}
