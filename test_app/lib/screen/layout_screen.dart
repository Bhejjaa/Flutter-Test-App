import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('layout'),
      ),
      body: SafeArea(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const Icon(
                    Icons.call,
                    size: 50,
                  ),
                  Container(
                    child: const Text('Call'),
                  )
                ],
              ),
              Column(
                children: [
                  const Icon(
                    Icons.route,
                    size: 50,
                  ),
                  Container(
                    child: const Text('Call'),
                  )
                ],
              ),
              Column(
                children: [
                  const Icon(
                    Icons.share,
                    size: 50,
                  ),
                  Container(
                    child: const Text('Call'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
