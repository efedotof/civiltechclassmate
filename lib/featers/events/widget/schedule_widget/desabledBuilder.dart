import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Container disabledBuilder(day) => Container(
      decoration: BoxDecoration(
        color: const Color(0xFF29292D),
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
                color: const Color(0xFF606065),
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
