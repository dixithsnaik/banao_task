import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageUrl;
  final String time;
  final bool isbutton;
  final bool isIconButton;

  const CustomCard(
      {super.key,
      required this.imageUrl,
      required this.subTitle,
      required this.time,
      required this.title,
      this.isbutton = false,
      this.isIconButton = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
          ),
        ],
      ),
      width: 245,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            width: 245,
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subTitle,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0XFF598BED),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0XFF000000),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      time,
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0XFF6D747A),
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    isbutton == true
                        ? isIconButton == false
                            ? Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: SizedBox(
                                  height: 30,
                                  width: 62,
                                  child: TextButton(
                                    style: ButtonStyle(
                                      backgroundColor: null,
                                      shadowColor: null,
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          side: const BorderSide(
                                            color: Color(0XFF598BED),
                                            width: 1,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        'Book',
                                        style: GoogleFonts.inter(
                                          textStyle: const TextStyle(
                                            color: Color(0XFF6D747A),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    'assets/icons/lock.svg',
                                    height: 20,
                                  ),
                                ),
                              )
                        : const Text(''),
                  ],
                ),
                const SizedBox(
                  height: 21,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
