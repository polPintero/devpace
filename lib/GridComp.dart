import 'package:flutter/material.dart';
import './ItemComp.dart';

class GridComp extends StatefulWidget {
  GridComp({super.key, this.titlesList = const []});
  final List titlesList;
  final List<Widget> itemList = [];

  createItemsList() {
    for (String title in titlesList) {
      itemList.add(ItemComp(title: title));
    }
  }

  @override
  _GridCompState createState() => _GridCompState();
}

class _GridCompState extends State<GridComp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    widget.createItemsList();
    final query = MediaQuery.of(context);
    final double expandedHeight = query.size.height / 2;
    const gap = 12.0;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: expandedHeight,
            child: const Image(
              image:  AssetImage('assets/logo.png'),
            ),
          ),
          ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: expandedHeight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Wrap(
                    spacing: gap,
                    runSpacing: gap,
                    children: widget.itemList,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
