class Language {
  final String name;
  final bool favorite;

  Language({
    required this.name,
    required this.favorite,
  });

  Language markFavorite() {
    return Language(
      name: name, 
      favorite: !favorite); // inverter de falso para verdadeiro ou vice-versa
  }
}