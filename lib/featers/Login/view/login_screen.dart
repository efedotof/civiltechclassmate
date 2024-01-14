import 'package:flutter/material.dart';
import '../widget/widget.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()   
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controller = TextEditingController();
  String? selectedGroup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBarEntrance(context),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                const Column(
                  children: [
                    ContainerEmailOrPass(),
                    SizedBox(
                      height: 20,
                    ),
                     GestureDetectorGoMainScreen(),
                    SizedBox(
                      height: 20,
                    ),
                     RowNoAccount(),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                ),
                const TextNameCompani(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
