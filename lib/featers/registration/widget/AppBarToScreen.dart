import 'package:flutter/material.dart';

PreferredSizeWidget? appBarToScreen(context) {
  return AppBar(
    title: const Text('Регистрация'),
    centerTitle: true,
    automaticallyImplyLeading: false,
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF58AAFE),
              )),
        ],
      ),
    ),
  );
}
