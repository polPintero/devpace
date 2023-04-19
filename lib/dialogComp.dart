import 'package:flutter/material.dart';

Future dialogComp(context) {

  String itemTitle = '';
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Type title for new Item'),
        content: SingleChildScrollView(
          child: Center(
            child: TextField(
              onChanged: (value) {
                itemTitle = value;
              },
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: Text('Done'),
            onPressed: () {
              Navigator.pop(context, itemTitle);
            },
          ),
        ],
      );
    },
  );
}
