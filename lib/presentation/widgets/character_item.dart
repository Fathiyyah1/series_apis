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
      child: GridTile(
          child: Container(
            color: ColorsDesign.lightDark,
            child: character.image.isNotEmpty
                ? FadeInImage.assetNetwork(
                    width: double.infinity,
                    height: double.infinity,
                    placeholder: 'assets/images/Animation.gif',
                    image: character.image)
                : Image.asset('assets/images/mockup.png'),
          ),
          footer: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Colors.black12,
            alignment: Alignment.bottomCenter,
            child: Text(
              '${character.name}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                  fontSize: 16,
                  color: Colors.white),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
