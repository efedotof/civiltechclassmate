import 'package:auto_route/auto_route.dart';
import 'package:civiltechclassmate/router/router.dart';
import 'package:flutter/material.dart';

import '../../featers/Onboarding/onboarding.dart';

class ApplicationModel{
  final List<PageRouteInfo<dynamic>> screensMainpageScreen = [
    const EventsRoute(),
    const ScheduleRoute(),
    const TasksRoute(),
    const TeachersRoute(),
    const PersonalCabinetRoute(),
  ];


  



  List<BottomNavigationBarItem> bottomItemsMainpageScreen = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Главная',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.event_note_outlined),
      label: 'Расписание',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.task_outlined),
      label: 'Задачи',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.group_outlined),
      label: 'Преподаватели',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.menu_book_outlined),
      label: 'Кабинет',
    ),
  ];

  List<String> namesNewsScreen = [
    'Актуальное',
    'Новости университета',
    'Новости Механического факультета',
    'Новости Факультета прикладной математики и вычислительной техники',
    'Новости Факультета управления на воздушном транспорте',
    'Новости Заочного факультета',
    'Новости Факультета авиационных систем и комплексов',
  ];

  List<Widget> pageViewListOnboardingScreen = const [
    ListAndTastsScreen(),
    TeachersScreenOnBoard(),
    StayInTouchScreen(),
  ];

  //RegistrationScreen
  List<String> groupSelected = ['Группа 1', 'Группа 2', 'Группа 3', 'Группа 4'];

  String getFrame(String audc) {
    List str = audc.split('-');
    if (str.length == 2) {
      return 'старый корпус';
    } else {
      return 'новый корпус';
    }
  }

  Color getColorsTypePara(String para) {
    switch (para) {
      case 'Пр.Зан.':
        return const Color(0xFF5E5CE7);
      case 'Лекция':
        return const Color(0xFF34C759);
      case 'Лаб.Раб.':
        return const Color(0xFF3499FF);
      case 'Лаб.раб.':
        return const Color(0xFF3499FF);
      case 'Лаб.раб':
        return const Color(0xFF3499FF);
      default:
        return const Color(0xFF34C759);
    }
  }

  String getParaDayOfWeek(int weekday) {
    switch (weekday) {
      case 0:
        return 'I';
      case 1:
        return 'II';
      case 2:
        return 'III';
      case 3:
        return 'IV';
      case 4:
        return 'V';
      case 5:
        return 'VI';
      case 6:
        return 'VII';
      case 7:
        return 'VIII';
      default:
        return '';
    }
  }

  String getTimeParaOfDay(int para) {
    switch (para) {
      case 0:
        return '8:30 - 10:00';
      case 1:
        return '10:10 - 11:40';
      case 2:
        return '12:40 - 14:10';
      case 3:
        return '14:20 - 15:50';
      case 4:
        return '16:00 - 17:30';
      case 5:
        return '18:00 - 19:30';
      case 6:
        return '19:40 - 21:10';
      default:
        return '';
    }
  }


  Color darkerColor(context) => Theme.of(context).primaryColor.withOpacity(0.3);
  List<String> arr(name) => name.split(',');
  String typeofoccupation (arr) => arr[0];
  String name(arr) => arr[arr.length != 1 ? 1 : 0];
  String surnamefirstnamepatronymicofteacher(arr) => arr[arr.length != 1 ? 2 : 0];
  String audience (arr) => arr[arr.length != 1 ? 3 : 0];


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

String getRussianDayOfWeek(int weekday) {
  switch (weekday) {
    case 1:
      return 'ПН';
    case 2:
      return 'ВТ';
    case 3:
      return 'СР';
    case 4:
      return 'ЧТ';
    case 5:
      return 'ПТ';
    case 6:
      return 'СБ';
    case 7:
      return 'ВС';
    default:
      return '';
  }
}

  final List<String> namesTeachersScreen = [
  'Андреев Андрей Андреевич',
  'Беляев Борис Борисович',
  'Васильев Валентин Валентинович',
  'Гришин Григорий Григорьевич',
  'Данилов Даниил Данилович',
  'Ефимов Евгений Евгеньевич',
  'Ёлкин Ёсип Ёсипович',
  'Жуков Ждан Жданович',
  'Зайцев Зенон Зенонович',
  'Исаев Ильгиз Ильгизович',
  'Карпов Клим Климович',
  'Ломакин Любомир Любомирович',
  'Миронов Милан Миланович',
  'Носов Назар Назарович',
  'Обухов Оскар Оскарович',
  'Поликарпов Платон Платонович',
  'Романов Родион Родионович',
  'Симонов Савва Саввович',
  'Тарасов Тимофей Тимофеевич',
  'Ульянов Устин Устинович',
  'Федоров Федор Федорович',
  'Харитонов Христофор Христофорович',
  'Цветков Циолковский Циолковскийович',
  'Чернов Чеслав Чеславович',
  'Шевцов Шамиль Шамильевич',
  'Щеглов Щедрин Щедринович',
  'Ызов Ысак Ысакович',
  'Ьединов Ьеатрис Ьеатрисович',
  'Энгельгардт Эрмин Эрминович',
  'Юдин Юлий Юлиевич',
  'Якубов Ян Янович',
];

}
