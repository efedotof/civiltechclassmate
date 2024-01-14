import 'package:flutter/material.dart';
import '../widget/widget.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage()   
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen>
  with SingleTickerProviderStateMixin {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBarToScreen(context),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xFF2A2A2C),
                      ),
                      child: const Column(
                        children:  [
                           TextFormFieldCard(text:'Имя и фамилия'),
                           TextFormFieldCard(text:'Почта'),
                           TextFormFieldCard(text:'Пароль'),
                           DropDownButtonCards(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const GestureDetectNextPage(),
                    const SizedBox(
                      height: 20,
                    ),
                    const RowHaveAnnAcc(),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.33,
                ),
                const TextNameComp(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
