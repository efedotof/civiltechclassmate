import 'package:flutter/material.dart';

AppBar appbar(context, searchController) => AppBar(
      automaticallyImplyLeading: false,
      title: const Text('Преподаватели',
          style: TextStyle(fontSize: 20, color: Colors.white)),
      centerTitle: true,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: kToolbarHeight + MediaQuery.of(context).size.height * 0.1,
            child: Stack(
              children: [
                Positioned(
                  top: kToolbarHeight +
                      MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.05,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xFF2A2A2D),
                    ),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 8),
                        const Icon(Icons.search, color: Color(0xFF818187)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextFormField(
                            controller: searchController,
                            onChanged: (query) {},
                            decoration: const InputDecoration(
                              hintText: 'Поиск',
                              hintStyle: TextStyle(color: Color(0xFF545456)),
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
