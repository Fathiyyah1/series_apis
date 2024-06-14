class Character {
  late int charId;
  late String name;
  late String status;
  late String species;
  late String gender;
  late String image;
  // late List<dynamic> origin;
  // late List<dynamic> episode;
  // late List<dynamic> location;

  Character.fromJson(Map<String, dynamic> json) {
    charId = json["id"];
    name = json["name"];
    status = json["status"];
    species = json["species"];
    gender = json["gender"];
    image = json["image"];
    // origin = json["origin"];
    // episode = json["episode"];
    // location = json["location"];
  }
}
