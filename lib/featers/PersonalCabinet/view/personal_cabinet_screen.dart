import 'package:flutter/material.dart';
import '../widget/widget.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()   
class PersonalCabinetScreen extends StatefulWidget {
  const PersonalCabinetScreen({super.key});

  @override
  State<PersonalCabinetScreen> createState() => _PersonalCabinetScreenState();
}

class _PersonalCabinetScreenState extends State<PersonalCabinetScreen> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBarToScreen(),
      body: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ProfileCards(),
            CabinProfiles(),
          ],
        ),
      ),
    );
  }
}