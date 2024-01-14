
import 'package:flutter/material.dart';
import '../widget/widget.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()   
class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  DateTime selectedDay = DateTime.now();
  List<String?> schedule = [];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
             TablesCalendarWidget(selectedDay: selectedDay,),
             const SizedBox(height: 20,),
             const FilterButtons(),
             const SizedBox(height: 10,),
             const ColumnEvents(),
             const ColumnEvents()
          ],
        ),
      ),
    );
  }
} 
// return Scaffold(
    //   appBar: PreferredSize(
    //     preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.128),
    //     child: AppBar(
    //       automaticallyImplyLeading: false,
    //       title: const Text('Главная', style: TextStyle(fontSize: 20, color: Colors.white)),
    //       centerTitle: true,
    //       flexibleSpace: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
    //           SizedBox(
    //             height: kToolbarHeight + MediaQuery.of(context).size.height * 0.05,
    //             child: Stack(
    //               children: [
    //                 Positioned(
    //                   top: kToolbarHeight,
    //                   left: 0,
    //                   right: 0,
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Row(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         buildTab(context,_pageController,_currentPageIndex,0, 'Новости'),
    //                         const SizedBox(width: 20,),
    //                         buildTab(context,_pageController,_currentPageIndex,1, 'Мероприятия'),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    //   backgroundColor: Theme.of(context).primaryColor,
    //   body: PageView(
    //     controller: _pageController,
    //     onPageChanged: (index) {
    //       setState(() {
    //         _currentPageIndex = index;
    //       });
    //     },
    //     children: List.generate(pages.length, (index) => pages[index]),
    //   ),
    // );