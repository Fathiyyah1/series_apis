import 'package:flutter/material.dart';

abstract class CharactersState {}

class CharacterInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Characters> characters;
  CharactersLoaded(this.characters);
}

class CharactersErrors extends CharactersState {
  final String ErrorMessage;
  CharactersErrors(this.ErrorMessage);
}
