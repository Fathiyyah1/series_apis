import 'package:flutter_bloc/flutter_bloc.dart';

import 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit() : super(CharacterInitial());
}
