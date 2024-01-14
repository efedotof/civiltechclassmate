import 'dart:convert';
import 'package:civiltechclassmate/featers/Schedule/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../model/model.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()   
class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  DateTime _selectedDay = DateTime.now();
  List<Map<String, dynamic>> jsonData = [];
  List<String?> schedule = [];

  List<String?> getScheduleForSelectedDay(
    DateTime selectedDay, List<Map<String, dynamic>> jsonData) {
  String formattedSelectedDay =
      '${selectedDay.day.toString().padLeft(2, '0')}-${selectedDay.month.toString().padLeft(2, '0')}-${selectedDay.year}';

  for (var entry in jsonData) {
    if (entry.containsKey("Unnamed: 0") &&
        entry["Unnamed: 0"] == formattedSelectedDay) {
      return [
        entry['I'],
        entry['II'],
        entry['III'],
        entry['IV'],
        entry['V'],
        entry['VI'],
        entry['VII'],
        entry['VIII'],
      ];
    }
  }

  return List.generate(8, (index) => null);
}



  @override
  void initState() {
    super.initState();
    loadJsonData().then((_) {
      updateSchedule();
    });
  }

  Future<void> loadJsonData() async {
    try {
      String jsonString =
          await rootBundle.loadString('lib/data/НКТ 2-1 семестр.json');

      setState(() {
        List<dynamic> decodedJson = json.decode(jsonString);
        jsonData = List<Map<String, dynamic>>.from(decodedJson);
      });

      print(jsonData);
    } catch (e) {
      print('Error loading JSON data: $e');
    }
  }

  void updateSchedule() {
    setState(() {
      schedule = getScheduleForSelectedDay(_selectedDay, jsonData);
    });
  }

  @override
  void didUpdateWidget(covariant ScheduleScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _selectedDay = DateTime.now();
    loadJsonData().then((_) {
      updateSchedule();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var appFile = context.read<ApplicationModel>();
    bool allValuesNull = schedule.isEmpty || schedule.every((value) => value == null);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.16),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: const  Text('Расписание'),
          centerTitle: true,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(
                height: kToolbarHeight +
                MediaQuery.of(context).size.height * 0.07, 
                child: Stack(children: [
                  Positioned(
                    top: kToolbarHeight,
                    left: 0,
                    right: 0,
                    child: TableCalendar(
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
                        return isSameDay(_selectedDay, day);
                      },
                      onDaySelected: (selectedDay, focusedDay) {
                        setState(() {
                          _selectedDay = selectedDay;
                          schedule =
                              appFile.getScheduleForSelectedDay(_selectedDay, jsonData);
                        });
                      },
                      availableCalendarFormats: const {
                        CalendarFormat.week: 'Неделя',
                      },
                      calendarStyle: styleCalendar(),
                      focusedDay: _selectedDay,
                      firstDay: DateTime(2023, 1, 1),
                      lastDay: DateTime(2030, 12, 31),
                      calendarFormat: CalendarFormat.week,
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: allValuesNull
            ? Column(
                children: [
                  Container(
                    color: Colors.blue, 
                    height: MediaQuery.of(context).size.height *0.4, 
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const NoPar(text: 'Сегодня пар нет!', size: 29, colors: Colors.white, fontweigth: FontWeight.bold, textAlign: null,),
                  const SizedBox(
                    height: 10,
                  ),
                   const NoPar(text: 'Не знаешь, чем занять себя на выходных?\nМы подскажем!', size: 18, colors: Color(0xFF545456), fontweigth: FontWeight.bold, textAlign: TextAlign.center,),
                  const SizedBox(
                    height: 20,
                  ),
                  goKudaTo(context),
                ],
              )
            : columnCardsShedule(schedule),
      ),
    );
  }
}

