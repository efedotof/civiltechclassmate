import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'widget.dart';

class TablesCalendarWidget extends StatefulWidget {
  const TablesCalendarWidget({super.key, required this.selectedDay});

  final DateTime? selectedDay;

  @override
  State<TablesCalendarWidget> createState() => _TablesCalendarWidgetState();
}

class _TablesCalendarWidgetState extends State<TablesCalendarWidget> {
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
              daysOfWeekVisible: false,
              calendarBuilders: CalendarBuilders(
                todayBuilder: (context, day, focusedDay) {
                  return  todayScreen(day);
                },
                defaultBuilder: (context, day, focusedDay) {
                  return defaultBuilder(day);
                },
                disabledBuilder: (context, day, focusedDay) {
                  return defaultBuilder(day);
                },
                selectedBuilder: (context, day, focusedDay) {
                  return selectBuilder(day);
                },
              ),
              headerVisible: false,
              selectedDayPredicate: (day) {
                return isSameDay(widget.selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                // setState(() {
                //   _selectedDay = selectedDay;
                //   schedule =
                //       appFile.getScheduleForSelectedDay(_selectedDay, jsonData);
                // });
              },
              availableCalendarFormats: const {
                CalendarFormat.week: 'Неделя',
              },
              calendarStyle: styleCalendar(),
              focusedDay: widget.selectedDay!,
              firstDay: DateTime(2023, 1, 1),
              lastDay: DateTime(2030, 12, 31),
              calendarFormat: CalendarFormat.week,
            );
  }
}