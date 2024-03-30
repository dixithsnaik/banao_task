import 'package:banao_task1/screens/all_lessons.dart';
import 'package:banao_task1/screens/all_programs.dart';
import 'package:banao_task1/widgets/custom_card.dart';
import 'package:banao_task1/widgets/custom_appbar.dart';
import 'package:banao_task1/widgets/custom_button.dart';
import 'package:banao_task1/widgets/lesson_for_you.dart';
import 'package:banao_task1/widgets/programs_for_you.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0XFFEEF3FD),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAppBar(),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Hello, Priya!',
                        style: GoogleFonts.lora(
                          textStyle: const TextStyle(
                            color: Color(0XFF08090A),
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Text(
                        'What do you wanna learn today?',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Color(0XFF6D747A),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CoustomButton(
                            iconPath: 'assets/icons/Book-mark.svg',
                            title: 'Programs',
                          ),
                          CoustomButton(
                            iconPath: 'assets/icons/help-circle.svg',
                            title: 'Get help',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CoustomButton(
                            iconPath: 'assets/icons/Book-open.svg',
                            title: 'Learn',
                          ),
                          CoustomButton(
                            iconPath: 'assets/icons/trello.svg',
                            title: 'DD Tracker',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              //hero section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16)
                        .copyWith(bottom: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Programs for you',
                              style: GoogleFonts.lora(
                                textStyle: const TextStyle(
                                    color: Color(0XFF000000),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const AllPrograms();
                                },
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                'View all',
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Color(0XFF6D747A),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //card list
                  const ProgramsForYou(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //2nd card
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 24,
                      right: 10,
                      left: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Events and experiences',
                              style: GoogleFonts.lora(
                                textStyle: const TextStyle(
                                    color: Color(0XFF000000),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'View all',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  color: Color(0XFF6D747A),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_forward))
                          ],
                        ),
                      ],
                    ),
                  ),
                  //card list
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: 24,
                        right: 10,
                        left: 16,
                      ),
                      child: Row(
                        children: [
                          CustomCard(
                            isbutton: true,
                            isIconButton: false,
                            subTitle: 'Babycare',
                            title: 'Understanding of human behaviour',
                            time: '13 Feb, Sunday',
                          ),
                          CustomCard(
                            isbutton: true,
                            isIconButton: false,
                            subTitle: 'Babycare',
                            title: 'Understanding of human behaviour',
                            time: '13 Feb, Sunday',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //3rd card
              const SizedBox(
                height: 10,
              ),
              //2nd card
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 24,
                      right: 10,
                      left: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Lessons for you',
                              style: GoogleFonts.lora(
                                textStyle: const TextStyle(
                                    color: Color(0XFF000000),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const AllLessons();
                                },
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                'View all',
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Color(0XFF6D747A),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_forward))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //card list
                  const LessonForYou(),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
