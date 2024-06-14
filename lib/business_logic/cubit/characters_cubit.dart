import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:series_apis/data/repository/CharactersRepository.dart';
import '../../data/models/characters.dart';
import 'characters_state.dart';
import 'package:bloc/bloc.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final Charactersrepository charactersrepository;
  late List<Character> characters;

  CharactersCubit(this.charactersrepository) : super(CharacterInitial());

  //in this function i'll recieve all the data from the Charactersrepository
  List<Character> getAllCharacters() {
    charactersrepository.getAllCharacters().then((characters) {
      emit(CharactersLoaded(characters));
      this.characters =
          characters; //this.characters means the list var characters above in line 11
    });

    return characters;
  }
}
