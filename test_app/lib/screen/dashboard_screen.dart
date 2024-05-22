import 'package:flutter/material.dart';
import 'package:test_app/screen/arithmetic_screen.dart';
import 'package:test_app/screen/circle_screen.dart';
import 'package:test_app/screen/simple_interest_screen.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10,),SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ArithmeticScreen()),);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Set the background color to green
                ),
                child: const Text(
                  'Arithemetic Screen',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SimpleIntrestScreen()));
                },
                child: const Text(
                  'Simple Intrest',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CircleScreen()));
                },
                child: const Text(
                  'Area of Circle',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
