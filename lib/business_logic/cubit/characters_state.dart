import 'package:flutter/material.dart';
import 'package:series_apis/data/models/characters.dart';

abstract class CharactersState {}

class CharacterInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Character> characters;
  CharactersLoaded(this.characters);
}

class CharactersErrors extends CharactersState {
  final String ErrorMessage;
  CharactersErrors(this.ErrorMessage);
}
