import 'package:flutter/material.dart';
import 'GridComp.dart';
import './dialogComp.dart';

class BodyComp extends StatefulWidget {
  const BodyComp({super.key});

  @override
  State<BodyComp> createState() => _BodyCompState();
}

class _BodyCompState extends State<BodyComp> {
  int length = 0;
  List titlesList = [];
  void createTitleList() {
    for (var i = 0; i < length; i++) {
      titlesList.add('item# ${i + 1}');
    }
  }

  @override
  void initState() {
    super.initState();
    createTitleList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Scrollbar(child: GridComp(titlesList: titlesList)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          dynamic result = await dialogComp(context);
          if (result == null) return;
          titlesList.add(result);
          setState(() {});
        },
        tooltip: 'Add Item',
        child: const Icon(Icons.add),
      ),
    );
  }
}