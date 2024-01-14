import 'package:civiltechclassmate/router/router.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()
class EventAndNewsScreen extends StatefulWidget {
  const EventAndNewsScreen({super.key});

  @override
  State<EventAndNewsScreen> createState() => _EventAndNewsScreenState();
}

class _EventAndNewsScreenState extends State<EventAndNewsScreen> {
  // final PageController _pageController = PageController();
  // int _currentPageIndex = 0;

  // List<Widget> pages = [
  //   const NewsScreen(),
  // ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        NewsRoute(),
        EventsRoute(),
      ],
      builder: (context, child, controller) {
        // final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Главная', style: TextStyle(fontSize: 20, color: Colors.white)),
            centerTitle: true,
            actions: const [
               Icon(Icons.bookmark_outline, color: Color(0xFFE9E4E9),),
               SizedBox(width: 10,),
               Icon(Icons.notifications_none_outlined, color: Color(0xFFE9E4E9),),
               SizedBox(width: 10,),
            ],
            leading: const AutoLeadingButton(),
            bottom: TabBar(
              controller: controller,
              tabs: const [
                Tab(text: 'Новости'),
                Tab(text: 'Мероприятия'),
              ],
            ),
          ),
          body: child,
        );
      },
    );
  }

  // Scaffold(
  // appBar: PreferredSize(
  //   preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.128),
  //   child: AppBar(
  //     automaticallyImplyLeading: false,
  //     title: const Text('Главная', style: TextStyle(fontSize: 20, color: Colors.white)),
  //     centerTitle: true,
  //     flexibleSpace: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
  //         SizedBox(
  //           height: kToolbarHeight + MediaQuery.of(context).size.height * 0.05,
  //           child: Stack(
  //             children: [
  //               Positioned(
  //                 top: kToolbarHeight,
  //                 left: 0,
  //                 right: 0,
  //                 child: Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Row(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       buildTab(context,_pageController,_currentPageIndex,0, 'Новости'),
  //                       const SizedBox(width: 20,),
  //                       buildTab(context, _pageController,_currentPageIndex,1, 'Мероприятия'),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  // ),
  // backgroundColor: Theme.of(context).primaryColor,
  // body: PageView(
  //   controller: _pageController,
  //   onPageChanged: (index) {
  //     setState(() {
  //       _currentPageIndex = index;
  //     });
  //   },
  //   children: List.generate(pages.length, (index) => pages[index]),
  // ),
  // );
}
