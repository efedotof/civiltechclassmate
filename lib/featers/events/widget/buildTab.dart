
import 'package:flutter/material.dart';

GestureDetector buildTab(context,pageController,currentPageIndex,int tabIndex, String title) {
    return GestureDetector(
      onTap: () {
        pageController.animateToPage(tabIndex, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      },
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, color:  Colors.white),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
          Container(
            width: MediaQuery.of(context).size.width * 0.18,
            height: 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: currentPageIndex == tabIndex ? Colors.white : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }