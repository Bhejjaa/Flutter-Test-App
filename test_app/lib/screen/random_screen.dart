import 'package:flutter/material.dart';
import 'dart:math';

class RandomScreen extends StatefulWidget {
  const RandomScreen({super.key});

  @override
  _RandomScreenState createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  final Random _random = Random();
  int _currentNumber = 0;
  int _option1 = 0;
  int _option2 = 0;
  int _correctCount = 0;
  int _incorrectCount = 0;
  int _attempts = 0;
  bool _gameOver = false;

  @override
  void initState() {
    super.initState();
    _generateNewNumbers();
  }

  void _generateNewNumbers() {
    if (_attempts >= 10) {
      setState(() {
        _gameOver = true;
      });
      return;
    }

    setState(() {
      _currentNumber = _random.nextInt(100) + 1;
      if (_random.nextBool()) {
        _option1 = _currentNumber;
        _option2 = _generateDifferentNumber(_currentNumber);
      } else {
        _option2 = _currentNumber;
        _option1 = _generateDifferentNumber(_currentNumber);
      }
    });
  }

  int _generateDifferentNumber(int exclude) {
    int newNumber;
    do {
      newNumber = _random.nextInt(100) + 1;
    } while (newNumber == exclude);
    return newNumber;
  }

  void _onOptionSelected(int selectedOption) {
    setState(() {
      if (selectedOption == _currentNumber) {
        _correctCount++;
      } else {
        _incorrectCount++;
      }
      _attempts++;
      _generateNewNumbers();
    });
  }

  void _restartGame() {
    setState(() {
      _correctCount = 0;
      _incorrectCount = 0;
      _attempts = 0;
      _gameOver = false;
    });
    _generateNewNumbers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Generator Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!_gameOver)
              Column(
                children: [
                  Text(
                    'Choose the correct number',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () => _onOptionSelected(_option1),
                        child: Text('$_option1'),
                      ),
                      ElevatedButton(
                        onPressed: () => _onOptionSelected(_option2),
                        child: Text('$_option2'),
                      ),
                    ],
                  ),
                ],
              ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text(
                    'Game Stats',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text('Correct guesses: $_correctCount'),
                  Text('Incorrect guesses: $_incorrectCount'),
                ],
              ),
            ),
            if (_gameOver)
              Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Game Over! You played $_attempts times.',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _restartGame,
                    child: Text('Restart Game'),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
