import 'package:banao_task1/widgets/bottom_nav_bar.dart';
import 'package:banao_task1/widgets/custom_card.dart';
import 'package:banao_task1/widgets/custom_appbar.dart';
import 'package:banao_task1/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                          isbutton: false,
                          imageUrl: 'assets/images/img1.png',
                          subTitle: 'Lifestyle',
                          title: 'A complete guide for your new born baby',
                          time: '16 lessons',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        CustomCard(
                          isbutton: false,
                          imageUrl: 'assets/images/img2.png',
                          subTitle: 'Working Parents',
                          title: 'Understanding of human behaviour',
                          time: '12 lessons',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                ),
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
                          imageUrl: 'assets/images/img3.png',
                          subTitle: 'Babycare',
                          title: 'Understanding of human behaviour',
                          time: '13 Feb, Sunday',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        CustomCard(
                          isbutton: true,
                          isIconButton: false,
                          imageUrl: 'assets/images/img3.png',
                          subTitle: 'Babycare',
                          title: 'Understanding of human behaviour',
                          time: '13 Feb, Sunday',
                        ),
                        SizedBox(
                          width: 16,
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
                    padding: EdgeInsets.only(left: 16, bottom: 6),
                    child: Row(
                      children: [
                        CustomCard(
                          isbutton: true,
                          isIconButton: true,
                          imageUrl: 'assets/images/img3.png',
                          subTitle: 'Babycare',
                          title: 'Understanding of human behaviour',
                          time: '3 min',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        CustomCard(
                          isbutton: true,
                          isIconButton: true,
                          imageUrl: 'assets/images/img3.png',
                          subTitle: 'Babycare',
                          title: 'Understanding of human behaviour',
                          time: '1 min ',
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
