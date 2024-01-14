import 'package:flutter/material.dart';

import 'CabinProfilesCards.dart';

class CabinProfiles extends StatefulWidget {
  const CabinProfiles({super.key});

  @override
  State<CabinProfiles> createState() => _CabinProfilesState();
}

class _CabinProfilesState extends State<CabinProfiles> {
  bool isNigthMode = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.96,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width * 0.96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xFF1C1C1E),
            ),
            child: const Column(
              children: [
                CabinProfilesCards(
                  color: Color(0xFF0782FF),
                  icon: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                  text: 'Чаты с преподавателями',
                ),
                SizedBox(
                  height: 11,
                ),
                CabinProfilesCards(
                  color: Color(0xFFFFB038),
                  icon: Icon(
                    Icons.note_rounded,
                    color: Colors.white,
                  ),
                  text: 'Деканат',
                ),
                SizedBox(
                  height: 11,
                ),
                CabinProfilesCards(
                  color: Color(0xFF35CD5B),
                  icon: Icon(
                    Icons.check_box_outlined,
                    color: Colors.white,
                  ),
                  text: 'Чаты с преподавателями',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width * 0.96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xFF1C1C1E),
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF3634A3),
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                isNigthMode
                                    ? Icons.light_mode
                                    : Icons.dark_mode,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Text(
                              isNigthMode ? 'Светлая тема' : "Темная тема",
                              style: const TextStyle(
                                  fontSize: 19, color: Colors.white),
                            ),
                          ],
                        ),
                        Switch(
                          value: isNigthMode,
                          onChanged: (newValue) {
                            setState(() {
                              isNigthMode = newValue;
                            });
                          },
                        )
                      ],
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                      color: Color(0xFF252528),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                const CabinProfilesCards(
                  color: Color(0xFFFF453A),
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  text: 'Уведомления',
                ),
                const SizedBox(
                  height: 11,
                ),
                const CabinProfilesCards(
                  color: Color(0xFFBF5AF2),
                  icon: Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                  text: 'Язык',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width * 0.96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0xFF1C1C1E),
            ),
            child: const Column(
              children: [
                CabinProfilesCards(
                  color: Color(0xFFFF9D06),
                  icon: Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                  text: 'Помощь',
                ),
                SizedBox(
                  height: 11,
                ),
                CabinProfilesCards(
                  color: Color(0xFF929296),
                  icon: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                  text: 'О приложении',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 19,
          ),
        ],
      ),
    );
  }
}
