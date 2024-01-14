import 'package:flutter/material.dart';


 PreferredSizeWidget? AppBarEntrance(context){
  return AppBar(
        title: const Text('Вход'),
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

