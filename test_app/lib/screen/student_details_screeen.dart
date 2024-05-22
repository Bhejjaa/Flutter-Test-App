import 'package:flutter/material.dart';
import 'package:test_app/common/student_list_tile.dart';

import '../model/student_model.dart';

class StudentDetailsScreen extends StatefulWidget {
  const StudentDetailsScreen({super.key});

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  String? firstName;
  String? lastName;
  String? address;
  List<StudentModel> studentList = [];
  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
      ),
      body: Form(
        key: myKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter first Name";
                } else {
                  return null;
                }
              },
              onChanged: (value) {
                firstName = value;
              },
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: "First Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter last Name";
                } else {
                  return null;
                }
              },
              onChanged: (value) {
                lastName = value;
              },
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: "Last Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Address";
                } else {
                  return null;
                }
              },
              onChanged: (value) {
                address = value;
              },
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: "Address",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (myKey.currentState!.validate()) {
                      StudentModel newStudent = StudentModel(
                          firstName: firstName!,
                          lastName: lastName!,
                          address: address!);
                      studentList.add(newStudent);
                    }
                  });
                },
                child: const Text('Add Student')),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: studentList.length,
                  itemBuilder: (context, index) {
                    return StudentListTile(studentModel: studentList[index]);
                  }),
            )
          ]),
        ),
      ),
    );
  }
}
