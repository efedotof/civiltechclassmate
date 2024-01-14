import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../router/router.dart';

class GestureDetectorGoMainScreen extends StatelessWidget {
  const GestureDetectorGoMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      AutoRouter.of(context).push(const MainpageRoute());
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF0A8DFF),
        ),
        alignment: Alignment.center,
        child: const Text(
          'Вход',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
