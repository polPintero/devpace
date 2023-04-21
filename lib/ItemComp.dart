import 'package:flutter/material.dart';

class ItemComp extends StatelessWidget {
  const ItemComp({super.key, this.title = ''});
  final String title;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    const double gap = 20.0;

    return Container(
      padding: const EdgeInsets.all(gap),
      width: mediaQuery.size.width * 0.4,
      height: mediaQuery.size.height / 7,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 2,
            offset: const Offset(2, 4), // Shadow position
          ),
        ],
      ),
      child: Text(title),
    );
  }
}
