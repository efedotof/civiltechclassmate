import 'package:flutter/material.dart';

PreferredSizeWidget? appBarToScreen() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    automaticallyImplyLeading: false,
    actions: [
      TextButton(
          onPressed: () {},
          child: const Text(
            'Изм.',
            style: TextStyle(fontSize: 18, color: Color(0xFF0A4B8E)),
          ))
    ],
  );
}
