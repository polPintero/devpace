import 'package:flutter/material.dart';

class ItemComp extends StatelessWidget {
  const ItemComp({super.key, this.title = ''});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Text(title),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('DELETE'),
                onPressed: () {
                  print('delete item');
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
