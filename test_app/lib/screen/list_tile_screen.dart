import 'package:test_app/common/listtile.dart';
import 'package:flutter/material.dart';
class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i=0; i<100; i++) ...{
              if (i % 2 == 0) ...{
                ListTileCommon(index: i,
                )
              }
            }


            // ListTile(
            //   leading: const Icon(Icons.accessible_forward),
            //   title: const Text('Sonu Singh'),
            //   subtitle: const Text('kathmandu, nepal'),
            //   trailing: const Icon(Icons.delete),
            //   // onTap: (){
            //   //   debugPrint('ListTile tapped');
            //   // },
            //
            // ),ListTile(
            //   leading: const Icon(Icons.accessible_forward),
            //   title: const Text('Sonu Singh'),
            //   subtitle: const Text('kathmandu, nepal'),
            //   trailing: const Icon(Icons.delete),
            //   // onTap: (){
            //   //   debugPrint('ListTile tapped');
            //   // },
            // ),
          ],
        ),
      ),
    );
  }
}