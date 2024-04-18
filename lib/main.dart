import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton('7'),
                _buildButton('8'),
                _buildButton('9'),
                _buildOperatorButton('/'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton('4'),
                _buildButton('5'),
                _buildButton('6'),
                _buildOperatorButton('x'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildButton('1'),
                _buildButton('2'),
                _buildButton('3'),
                _buildOperatorButton('-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildClearButton('C'),
                _buildButton('0'),
                _buildEqualButton('='),
                _buildOperatorButton('+'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text) {
    return SizedBox(
      width: 80.0,
      height: 80.0,
      child: ElevatedButton(
        onPressed: () {
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 24.0),
          ),
        ),
        child: Text(text),
      ),
    );
  }

  Widget _buildOperatorButton(String text) {
    return SizedBox(
      width: 80.0,
      height: 80.0,
      child: ElevatedButton(
        onPressed: () {
          // Implement button functionality here
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.orange),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 24.0),
          ),
        ),
        child: Text(text),
      ),
    );
  }

  Widget _buildClearButton(String text) {
    return SizedBox(
      width: 80.0,
      height: 80.0,
      child: ElevatedButton(
        onPressed: () {
          // Implement button functionality here
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 24.0),
          ),
        ),
        child: Text(text),
      ),
    );
  }

  Widget _buildEqualButton(String text) {
    return SizedBox(
      width: 80.0,
      height: 80.0,
      child: ElevatedButton(
        onPressed: () {
          // Implement button functionality here
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 24.0),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
