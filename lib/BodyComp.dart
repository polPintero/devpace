import 'package:flutter/material.dart';
import './GridComp.dart';
import './dialogComp.dart';

class BodyComp extends StatefulWidget {
  const BodyComp({super.key});

  @override
  State<BodyComp> createState() => _BodyCompState();
}

class _BodyCompState extends State<BodyComp> {
  List titlesList = [];
  @override
  Widget build(BuildContext context) {
  // List titlesList = ['1', '2', '3', '4', '5', '6', '7', '8', '1', '2', '3', '4', '5', '6', '7', '8'];

    return Scaffold(
      body: SafeArea(
        child: GridComp(titlesList: titlesList),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          dynamic result = await dialogComp(context);
          titlesList.add(result);
          setState(() {});
        },
        tooltip: 'Add Item',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Image(image: AssetImage('assets/logo.png')),
