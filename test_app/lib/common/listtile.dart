import 'package:test_app/common/snackbar.dart';
import 'package:test_app/screen/output_screen.dart';
import 'package:flutter/material.dart';
 
class ListTileCommon extends StatelessWidget {
  final int index;
  const ListTileCommon({
    required this.index,
   super.key,});
 
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage:
         AssetImage
         ('assets/images/peakyblinders1.jpg')
      ,),
     
      title: Text('Pujendra Thapa $index'),
      subtitle: Text('Bhaktapur , Nepal'),
      trailing: Icon(Icons.delete),
      onTap: () {
        // showMySnackBar(message: "Clicked Name ${index + 1}", context: context);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => OutputScreen(fullName: "Name $index")));
      },
    );
  }
}