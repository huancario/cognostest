import 'package:flutter/material.dart';
import 'alphabet.dart';

class AlphabetApp extends StatefulWidget {
  @override
  _AlphabetAppState createState() => _AlphabetAppState();
}

class _AlphabetAppState extends State<AlphabetApp> {
  final Alphabet _alphabet = Alphabet();
  String _currentLetter = 'A';

  void _nextLetter() {
    setState(() {
      _currentLetter = _alphabet.getNextLetter(_currentLetter);
    });
  }

  void _previousLetter() {
    setState(() {
      _currentLetter = _alphabet.getPreviousLetter(_currentLetter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alphabet App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _currentLetter,
              style: const TextStyle(fontSize: 80),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: _previousLetter,
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: _nextLetter,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
