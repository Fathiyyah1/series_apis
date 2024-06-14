import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:series_apis/business_logic/cubit/characters_cubit.dart';
import 'package:series_apis/business_logic/cubit/characters_state.dart';
import 'package:series_apis/constants/colors.dart';
import 'package:series_apis/presentation/widgets/character_item.dart';

import '../../data/models/characters.dart';

class Charactersscreen extends StatefulWidget {
  const Charactersscreen({super.key});

  @override
  State<Charactersscreen> createState() => _CharactersscreenState();
}

class _CharactersscreenState extends State<Charactersscreen> {
  late List<Character>
      allCharacters; //you can instead of late use List<CharactersModel>?

  @override
  void initState() {
    super.initState();
    allCharacters = BlocProvider.of<CharactersCubit>(context)
        .getAllCharacters(); //calling the cubit to get all the data and states
  }

  Widget buildBlockWidget() {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersLoaded) {
          allCharacters = (state).characters;
          return buildLoadedListWidgets();
        } else {
          return showLoadingIndicator();
        }
      },
    );
  }

//else last statement condition
  Widget showLoadingIndicator() {
    return Center(
        child: CircularProgressIndicator(
      color: ColorsDesign.dark,
    ));
  }

  //Widget error message element
  Widget ErrorMessageWidget() {
    return Container(
      child: Center(
        child: Text("Error! Failed to load characters"),
      ),
    );
  }

//screen structure
  Widget buildLoadedListWidgets() {
    return SingleChildScrollView(
        child: Container(
      color: ColorsDesign.light,
      child: Column(
        children: [
          buildCharactersList(),
        ],
      ),
    ));
  }

//grid elment
  Widget buildCharactersList() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: allCharacters.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return CharacterItem(
            character: allCharacters[index],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsDesign.lightDark,
          title: Text(
            "Characters",
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
          ),
        ),
        body: buildBlockWidget());
  }
}
