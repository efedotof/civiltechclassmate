import 'package:civiltechclassmate/model/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/widget.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()   
class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  @override
  Widget build(BuildContext context) {
    var appFile = context.read<ApplicationModel>();
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(20, (index) => const Stories()),
                    ),
                  ),
                  Column(
                    children: List.generate(appFile.namesNewsScreen.length, (index) => 
                      ElementToScreen(text:appFile.namesNewsScreen[index] ,),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
