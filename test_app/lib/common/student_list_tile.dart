import 'package:flutter/material.dart';
import 'package:test_app/model/student_model.dart';

class StudentListTile extends StatelessWidget {
  final StudentModel studentModel;

  const StudentListTile({required this.studentModel, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/peakyblinders1.jpg')),
      title: Text(('${studentModel.firstName} ${studentModel.lastName}')),
      subtitle: Text(studentModel.address),
      trailing: const Icon(Icons.arrow_forward),
      tileColor: Colors.black12,
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => OutputScreen(index: index)));
      },
    );
  }
}
