class Alphabet {
  final List<String> _letters = List.generate(26, (index) => String.fromCharCode(index + 65));

  String getNextLetter(String currentLetter) {
    int index = _letters.indexOf(currentLetter);
    index = (index + 1) % _letters.length;
    return _letters[index];
  }

  String getPreviousLetter(String currentLetter) {
    int index = _letters.indexOf(currentLetter);
    index = (index - 1) % _letters.length;
    return _letters[index];
  }
}
