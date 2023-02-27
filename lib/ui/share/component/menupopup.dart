// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class PopupMenu extends StatelessWidget {
  const PopupMenu({super.key});
  @override
  Widget build(BuildContext context) {
    final list = [''];
    return PopupMenuButton(
      itemBuilder: (BuildContext context) => [
        const PopupMenuItem(
          child: Text('Item 1'),
        ),
      ],
    );
  }
}
