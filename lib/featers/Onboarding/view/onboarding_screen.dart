
import 'package:civiltechclassmate/router/router.dart';
import 'package:flutter/material.dart';
import '../widget/widget.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()   
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // PageController pageController = PageController(initialPage: 0);
  // int currentPage = 0;
  // Timer? _timer;

  // @override
  // void initState() {
  //   super.initState();
  //   _timer = Timer.periodic(const Duration(seconds: 8), (timer) {
  //     if (currentPage < 2) {
  //       currentPage++;
  //     } else {
  //       currentPage = 0;
  //     }
  //     pageController.animateToPage(
  //       currentPage,
  //       duration: const Duration(milliseconds: 500),
  //       curve: Curves.easeInOut,
  //     );
  //   });
  // }

  // @override
  // void dispose() {
  //   _timer?.cancel();
  //   pageController.dispose();
  //   super.dispose();
  // }


  @override 
  Widget build(BuildContext context){
   return AutoTabsRouter(      
      routes: const [      
        ListAndTastsRoute(),     
        TeachersRouteOnBoard(),  
        StayInTouchRoute(),      
             
      ],      
     transitionBuilder: (context,child,animation)=> FadeTransition(                
              opacity: animation,                             
              child: child,                
            ),       
      builder: (context, child) {                      
        // final tabsRouter = AutoTabsRouter.of(context);                
            
        return Scaffold(  
            backgroundColor: Theme.of(context).primaryColor,              
            body: child,               
            bottomNavigationBar: const GestureDetectorGoToAuth());                
      },                
    );                

  }
  // @override
  // Widget build(BuildContext context) {
  //   var appFile = context.watch<ApplicationModel>();
  //   return Scaffold(
  //     backgroundColor: Theme.of(context).primaryColor,
  //     body: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         SizedBox(
  //           width: MediaQuery.of(context).size.width,
  //           height: MediaQuery.of(context).size.height * 0.5,
  //           child: Expanded(
  //             child: PageView(
  //               controller: pageController,
  //               children: appFile.pageViewListOnboardingScreen,
  //               onPageChanged: (int page) {
  //                 setState(() {
  //                   currentPage = page;
  //                 });
  //               },
  //             ),
  //           ),
  //         ),
  //         CirAvatar(currentPage: currentPage,),
  //         const SizedBox(height: 30,),
  //         const GestureDetectorGoToAuth(),
  //       ],
  //     ),
  //   );
  // }



  
}
