import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../registration/view/registration_screen.dart';

GestureDetector goKudaTo(context) => GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: const RegistrationScreen(),
                isIos: true,
                duration: const Duration(milliseconds: 1600)));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF0A8DFF),
        ),
        alignment: Alignment.center,
        child: const Text(
          'GoKudaTo',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
