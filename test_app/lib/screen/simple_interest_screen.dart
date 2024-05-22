import 'package:flutter/material.dart';
import 'package:test_app/model/simple_interest_model.dart';

class SimpleIntrestScreen extends StatefulWidget {
  const SimpleIntrestScreen({super.key});

  @override
  State<SimpleIntrestScreen> createState() => _SimpleIntrestScreenState();
}

class _SimpleIntrestScreenState extends State<SimpleIntrestScreen> {
  double? principle;
  double? time;
  double? rate;
  late SimpleIntrestModel sim;
  double? result;
  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
            text: const TextSpan(
                text: 'Simple intrest calculator',
                style: TextStyle(color: Colors.yellow, fontSize: 30))),
        backgroundColor: Colors.redAccent.shade100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: myKey,
            child: Column(children: [
              const SizedBox(
                height: 60,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a Number";
                  } else {
                    return null;
                  }
                },
                onChanged: (value) {
                  principle = double.tryParse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    labelText: "Enter principle",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a Number";
                  } else {
                    return null;
                  }
                },
                onChanged: (value) {
                  rate = double.tryParse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter rate",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter a Number";
                  } else {
                    return null;
                  }
                },
                onChanged: (value) {
                  time = double.tryParse(value);
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter principle",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        sim = SimpleIntrestModel(
                            principle: principle, rate: rate, time: time);
                        result = sim.simin();
                      });
                    }
                  },
                  child: const Text(
                    'calculate',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                  text: TextSpan(
                      text: "Output is : $result",
                      style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          backgroundColor: Colors.green))),
              RichText(
                  text: const TextSpan(
                      text: "this is a test ",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'bold ',
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(text: 'this is end!')
                  ])),
              const SizedBox(
                height: 10,
              ),
              RichText(
                  text: const TextSpan(
                      text: "M",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'y ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: 'name is shishir',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400)),
                  ]))
            ]),
          ),
        ),
      ),
    );
  }
}
