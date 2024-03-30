import 'package:banao_task1/globles/secrets.dart';
import 'package:banao_task1/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllLessons extends StatelessWidget {
  const AllLessons({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lessons for you',
          style: GoogleFonts.lora(
            textStyle: const TextStyle(
                color: Color(0XFF000000),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: FutureBuilder(
          future: Apis().fetchLessons(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final lessons = snapshot.data!;
            return GridView.count(
              childAspectRatio: 7.5 / 10,
              crossAxisCount: size.width > 500 ? 6 : 2,
              crossAxisSpacing: 16,
              children: lessons
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: CustomCard(
                        isGrid: true,
                        subTitle: e.category,
                        time: "${e.duration} min",
                        title: e.name,
                      ),
                    ),
                  )
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
