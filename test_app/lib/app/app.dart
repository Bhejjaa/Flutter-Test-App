import 'package:flutter/material.dart';
import 'package:test_app/common/student_list_tile.dart';
import 'package:test_app/screen/calculator_screen.dart';
import 'package:test_app/screen/output_screen.dart';
import 'package:test_app/screen/arithmetic_screen.dart';
import 'package:test_app/screen/column_screen.dart';
import 'package:test_app/screen/dashboard_screen.dart';
import 'package:test_app/screen/flexible_expandable.dart';
import 'package:test_app/screen/layout_screen.dart';
import 'package:test_app/screen/list_tile_screen.dart';
import 'package:test_app/screen/profile_screen.dart';
import 'package:test_app/screen/radio_screen.dart';
import 'package:test_app/screen/rows_column_screen.dart';
import 'package:test_app/screen/simple_interest_screen.dart';
import 'package:test_app/screen/containner_screen.dart';
import 'package:test_app/screen/stack_screen.dart';
import 'package:test_app/screen/student_details_screeen.dart';
import 'package:test_app/screen/ui_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StackWidget(),
    );
  }
}
