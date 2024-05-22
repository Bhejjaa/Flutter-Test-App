import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 
 
class FlexibleExpandable extends StatelessWidget {
  const FlexibleExpandable({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Flexible(
            fit: FlexFit.loose,
            child: Container(
              color: Colors.red,
              height: 400,
              width: double.infinity,
              alignment: Alignment.center,
              child: ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(backgroundColor: Colors.green,content: Text('Button 1 is pressed'),
                duration: Duration(seconds: 3), behavior: SnackBarBehavior.floating,));
              },child: const Text('1'),),

            ),
          ),
         Expanded(
            child: Container(
              color: Colors.yellow,
              height: 200,
              width: double.infinity,
              alignment: Alignment.center,
              child: ElevatedButton(onPressed: (){
                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(backgroundColor: Colors.red,content: Text('Button 2 is pressed'),
                duration: Duration(seconds: 3),  ));
              },child: const Text('2'),),
  
            ),
          )
        ],
      ),
    );
  }
}