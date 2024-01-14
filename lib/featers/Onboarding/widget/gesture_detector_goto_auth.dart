import 'package:auto_route/auto_route.dart';
import 'package:civiltechclassmate/router/router.dart';
import 'package:flutter/material.dart';

class GestureDetectorGoToAuth extends StatelessWidget {
  const GestureDetectorGoToAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
              onTap: (){
                AutoRouter.of(context).push(const RegistrationRoute());
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
                    'Перейти к авторизации',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
              ),
            ),
    );
  }
}