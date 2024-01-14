import 'package:flutter/material.dart';

ThemeData? theme() => ThemeData(

        focusColor:  const Color(0xFF6F7688),
        primaryTextTheme: const TextTheme(
        bodyLarge: TextStyle(color: Color(0xFFBBC2CB),fontSize: 20),
        bodyMedium: TextStyle(color: Color(0xFF575F77), fontSize: 21, fontWeight: FontWeight.bold),
      ),

      highlightColor: const Color(0xFF597980),

      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Color(0xFF414A63), fontSize: 15)
      ),
      indicatorColor: const Color(0xFF738C97),
          cardColor:  const Color(0xFF33384B),
          primaryColor: const Color(0xFF0A0A0A),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xFF2D2D2F) ,
            selectedItemColor:  Color(0xFFFFFFFF), 
            unselectedItemColor: Color(0xFF7E7D84), 
            selectedLabelStyle:  TextStyle(color: Color(0xFFFFFFFF)), 
            unselectedLabelStyle:  TextStyle(color: Color(0xFF7E7D84))
            ),
          appBarTheme: const AppBarTheme(
            backgroundColor:  Color(0xFF111112),
            iconTheme: IconThemeData(color:  Color(0xFFDCD7DC) ), 
            actionsIconTheme: IconThemeData(color:  Color(0xFFDCD7DC)), 
          ),
        );