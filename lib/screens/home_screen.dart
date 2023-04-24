import 'package:flutter/material.dart';
import '../GridComp.dart';
import '../dialogComp.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          titlesList.isNotEmpty ? Padding(
            padding: const EdgeInsets.only(left: 30),
            child: FloatingActionButton(
              onPressed: () async {
                titlesList.removeLast();
                setState(() {});
              },
              tooltip: 'Delete last item',
              child: const Icon(Icons.delete),
            ),
          ) : SizedBox(),
          FloatingActionButton(
            onPressed: () async {
              dynamic result = await dialogComp(context);
              if (result == null || result == '') return;
              titlesList.add(result);
              setState(() {});
            },
            tooltip: 'Add Item',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
