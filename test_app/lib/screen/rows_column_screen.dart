import 'package:flutter/material.dart';

class RowsColumnScreen extends StatelessWidget {
  const RowsColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ROws and COlumns'),
        backgroundColor: Colors.blue,
        elevation: 10,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                    height: 100,
                    child: const Text('Container 1'),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    height: 100,
                    child: const Text(
                      'Container 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    height: 100,
                    child: const Text('Container 3'),
                  ),
                ),
              ],
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                color: Colors.blueAccent,
                alignment: Alignment.center,
                width: double.infinity,
                height: 500,
                child: const Text('Container 1'),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                width: double.infinity,
                height: 500,
                child: const Text('Container 2'),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blueAccent,
                width: double.infinity,
                alignment: Alignment.center,
                height: 500,
                child: const Text('Container 3'),
              ),
            )
          ],
        ),
      ),
    );
  }
}