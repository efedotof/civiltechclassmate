import 'package:auto_route/auto_route.dart';
import 'package:civiltechclassmate/router/router.dart';
import 'package:flutter/material.dart';

class RowHaveAnnAcc extends StatelessWidget {
  const RowHaveAnnAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Есть аккаунт? ',
          style: TextStyle(fontSize: 18, color: Color(0xFF545456)),
          textAlign: TextAlign.center,
        ),
        GestureDetector(
          onTap: () {
            AutoRouter.of(context).push(const LoginRoute());
          },
          child: const Text(
            'Вход',
            style: TextStyle(fontSize: 18, color: Color(0xFF0A8DFF)),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
