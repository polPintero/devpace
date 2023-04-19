import 'dart:async';

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
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Image(image: AssetImage('assets/logo.png')),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 2.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return widget.itemList[index];
            },
            childCount: widget.itemList.length,
          ),
        ),
      ],
    );
  }
}
