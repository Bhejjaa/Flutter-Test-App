import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        clipBehavior: Clip
            .none, //not to clip (or cut off) any content that extends beyond the widget's boundary.
        children: [
          Container(
            height: screenHeight * .4,
            width: screenWidth * .3,
            color: Colors.amber,
            child: const Text('Pujendra'),
          ),
          Positioned(
            top: 1,
            right: 1,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blueAccent,
              child: const Text('Thapa'),
            ),
          ),
          Positioned(
              bottom: 1,
              left: 50,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ))
        ],
      )),
    );
  }
}
