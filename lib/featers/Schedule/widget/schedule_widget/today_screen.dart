import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Container todayScreen(day) => Container(
      height: 150.0, 
      decoration: BoxDecoration(
        color: const Color(0xFF0A84FF)
            .withOpacity(0.3), 
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.all(4.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateFormat.E().format(day), 
              style: const TextStyle(
                color: Color(0xFF606065), 
              ),
            ),
            Text(
              day.day.toString(), 
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
