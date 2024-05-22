import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UIScreen extends StatelessWidget {
  const UIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Container(
              color: const Color.fromARGB(255, 90, 133, 207),
              height: 50,
              width: 200,
              alignment: Alignment.topLeft,
              child: const Text('Containner 1'),
            ),
          ),
          Flexible(
            child: Container(
              color: const Color.fromARGB(255, 90, 133, 207),
              height: 50,
              width: 200,
              alignment: Alignment.topRight,
              child: const Text('Containner 2'),
            ),
          ),
        ],
      ),
    );
  }
}
