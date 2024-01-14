
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../model/model.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()   
class MainpageScreen extends StatefulWidget {
  const MainpageScreen({super.key});

  @override
  State<MainpageScreen> createState() => _MainpageScreenState();
}

class _MainpageScreenState extends State<MainpageScreen> {


  @override
  Widget build(BuildContext context){
    var appFile = context.read<ApplicationModel>();
     return AutoTabsRouter(                
      routes: appFile.screensMainpageScreen,       
      transitionBuilder: (context,child,animation)=> FadeTransition(                
              opacity: animation,                            
              child: child,                
            ),       
      builder: (context, child) {                
            
        final tabsRouter = AutoTabsRouter.of(context);                
              
        return Scaffold(      
            backgroundColor: Theme.of(context).primaryColor,          
            body: child,               
            bottomNavigationBar: BottomNavigationBar(       
              type: BottomNavigationBarType.fixed,         
              currentIndex: tabsRouter.activeIndex,                
              onTap: (index) {                             
                tabsRouter.setActiveIndex(index);                
              },                
              items: appFile.bottomItemsMainpageScreen,         
            ));                
      },                
    );                
  }


  // @override
  // Widget build(BuildContext context) {
  //   var appFile = context.read<ApplicationModel>();
  //   return WillPopScope(
  //     onWillPop: () async {
  //       return false;
  //     },
  //     child: Scaffold(
  //       backgroundColor: Theme.of(context).primaryColor,
  //       body:appFile.screensMainpageScreen[_currentIndex],
  //       bottomNavigationBar: BottomNavigationBar(
  //         type: BottomNavigationBarType.fixed,
  //         currentIndex: _currentIndex,
  //         onTap: (int newIndex) {
  //           setState(() {
  //             _currentIndex = newIndex;
  //           });
  //         },
  //         items:appFile.bottomItemsMainpageScreen,
  //       ),
  //     ),
  //   );
  // }
}
