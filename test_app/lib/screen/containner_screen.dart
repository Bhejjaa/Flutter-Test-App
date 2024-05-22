import 'package:flutter/material.dart';

class ContainnerSceen extends StatelessWidget {
  const ContainnerSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: const Text('I am a containner'),
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            border: Border.all(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
