import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;

  const BottomNavBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        navBarItem(selectedIndex == 0, 'assets/icons/Icon.svg', 'Home'),
        navBarItem(selectedIndex == 1, 'assets/icons/Icon-1.svg', 'Learn'),
        navBarItem(selectedIndex == 2, 'assets/icons/Icon-2.svg', 'Hub'),
        navBarItem(selectedIndex == 3, 'assets/icons/Icon-3.svg', 'Chat'),
        navBarItemProfile(
            selectedIndex == 4, 'assets/images/profile.png', 'Profile'),
      ],
    );
  }

  Expanded navBarItem(bool isSelected, String iconPath, String lable) {
    return Expanded(
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            border: isSelected
                ? const Border(
                    top: BorderSide(color: Color(0XFF598BED), width: 3),
                  )
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                height: 24,
                colorFilter: ColorFilter.mode(
                  isSelected
                      ? const Color(0XFF598BED)
                      : const Color(0XFF939CA3),
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                lable,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: isSelected
                        ? const Color(0XFF598BED)
                        : const Color(0XFF939CA3),
                    fontSize: 12,
                    fontWeight:
                        isSelected ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded navBarItemProfile(bool isSelected, String imagePath, String lable) {
    return Expanded(
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            border: isSelected
                ? const Border(
                    top: BorderSide(color: Color(0XFF598BED), width: 3),
                  )
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 34,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0XFFDEE8FB), width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      imagePath,
                      
                    ),
                    radius: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                lable,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: isSelected
                        ? const Color(0XFF598BED)
                        : const Color(0XFF939CA3),
                    fontSize: 12,
                    fontWeight:
                        isSelected ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
