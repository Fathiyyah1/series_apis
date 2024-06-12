import 'package:characters/src/characters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:series_apis/data/repository/CharactersRepository.dart';
import '../../data/models/characters.dart';
import 'package:meta/meta.dart';
import 'characters_state.dart';
import 'package:bloc/bloc.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final Charactersrepository charactersrepository;
  late List<CharactersModel> characters;

  CharactersCubit(this.charactersrepository) : super(CharacterInitial());

  //in this function i'll recieve all the data from the Charactersrepository
  List<CharactersModel> getAllCharacters() {
    charactersrepository.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters.cast<Characters>()));
    });

    return characters;
  }
}
