import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

CalendarStyle styleCalendar() => const CalendarStyle(
      outsideDaysVisible: false,
      weekendTextStyle: TextStyle(color: Color(0xFF666A70)),
      defaultTextStyle: TextStyle(color: Color(0xFF666A70)),
      selectedTextStyle: TextStyle(color: Colors.white),
      todayTextStyle: TextStyle(color: Colors.white),
      selectedDecoration: BoxDecoration(
        color: Color(0xFF0A84FF), // текущий день
        shape: BoxShape.rectangle,
      ),
      todayDecoration: BoxDecoration(
        shape: BoxShape.rectangle,
      ),
    );
