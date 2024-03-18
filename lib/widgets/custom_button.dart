import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CoustomButton extends StatelessWidget {
  final String title;
  final String iconPath;
  const CoustomButton({super.key, required this.iconPath, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: size.width * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0XFF598BED)),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 12,
          ),
          SvgPicture.asset(
            iconPath,
            height: 26,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            title,
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                  color: Color(0XFF598BED),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
