import 'package:series_apis/data/web_services/characters.web.services.dart';

import '../models/characters.dart';

class Charactersrepository {
  final CharactersWebServices charactersWebServices;

  Charactersrepository(this.charactersWebServices);

/* so here the data i got in weservices getAllCharacters() i store it in
   characters var and then hande it to map as the style of data model i made in mdoels 
   then organize it that way as it is as lists
 */
  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }
}
