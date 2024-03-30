import 'package:banao_task1/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardSection extends StatelessWidget {
  final String title;

  const CardSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 24),
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
                      onPressed: () {}, icon: const Icon(Icons.arrow_forward))
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
                  subTitle: 'Lifestyle',
                  title: 'A complete guide for your new born baby',
                  time: '16 lessons',
                ),
                SizedBox(
                  width: 16,
                ),
                CustomCard(
                  isbutton: false,
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
    );
  }
}
