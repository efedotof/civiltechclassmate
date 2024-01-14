import 'package:auto_route/auto_route.dart';

import '../featers/Login/login.dart';
import '../featers/MainPage/mainpage.dart';
import '../featers/Onboarding/onboarding.dart';
import '../featers/PersonalCabinet/personal_cabinet.dart';
import '../featers/Schedule/schedule.dart';
import '../featers/StartScreen/start_screens.dart';
import '../featers/Tasks/tasks.dart';
import '../featers/Tasks/view/completed_screen.dart';
import '../featers/Tasks/view/current_screen.dart';
import '../featers/Teachers/teachers.dart';
import '../featers/event_and_news/event_and_news.dart';
import '../featers/events/events.dart';
import '../featers/news/news.dart';
import '../featers/registration/registration.dart';


part 'router.gr.dart';            
              
@AutoRouterConfig()      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [   
    AutoRoute(page: OnboardingRoute.page,
      path: '/',
      children: [
        AutoRoute(
          page: ListAndTastsRoute.page, 
          path:  'ListAndTastsScreen',
        ),
        AutoRoute(
          page: StayInTouchRoute.page, 
          path:  'StayInTouchScreen',
        ),
         AutoRoute(
          page: TeachersRouteOnBoard.page, 
          path:  'TeachersScreenOnBoard',
        ),
      ],
    ),
    AutoRoute(
      page: RegistrationRoute.page,
      path: '/RegistrationScreen',

    ),
    AutoRoute(
      page: LoginRoute.page,
      path: '/LoginScreen',
    ),

  // const EventsRoute(),
  //   const ScheduleRoute(),
  //   const TasksRoute(),
  //   const TeachersRoute(),
  //   const PersonalCabinetRoute(),



    AutoRoute(
      page: MainpageRoute.page,
      path: '/MainpageScreen',
      children: [
        AutoRoute(
          page: EventAndNewsRoute.page, 
          path:  'EventAndNewsScreen',
          children: [
            AutoRoute(
              page: EventsRoute.page, 
              path:  'EventsScreen',
            ),
            AutoRoute(
              page: NewsRoute.page, 
              path:  'NewsScreen',
            ),
          ]
        ),
        AutoRoute(
          page: ScheduleRoute.page, 
          path:  'ScheduleScreen',
        ),
        AutoRoute(
          page: TasksRoute.page, 
          path:  'TasksScreen',
          children: [
            AutoRoute(
              page: CurrentRoute.page, 
              path:  'CurrentScreen',
            ),
            AutoRoute(
              page: CompletedRoute.page, 
              path:  'CompletedScreen',
            ),
          ]
        ),
        AutoRoute(
          page: TeachersRoute.page, 
          path:  'TeachersScreen',
        ),
        AutoRoute(
          page: PersonalCabinetRoute.page, 
          path:  'PersonalCabinetScreen',
        ),
      ]
    ),

   ];
 }