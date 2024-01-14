import 'package:civiltechclassmate/router/router.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
@RoutePage()  
class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

   @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
        routes: const [
           CurrentRoute(),
           CompletedRoute()
        ],
        builder: (context, child, controller) {
          // final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            appBar: AppBar(
               title: const  Text('Задачи', style: TextStyle(fontSize: 20, color: Colors.white)),
              centerTitle: true,
              leading: AutoLeadingButton(),
              bottom: TabBar(
                controller: controller,
                tabs: const [
                  Tab(text: 'Актуальные'),
                  Tab(text: 'Выполненые'),
                ],
              ),
            ),
            body: child,
          );
        });
  }
}


