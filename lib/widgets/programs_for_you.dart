import 'package:banao_task1/globles/secrets.dart';
import 'package:banao_task1/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ProgramsForYou extends StatelessWidget {
  const ProgramsForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 24,
          right: 10,
          left: 16,
        ),
        child: FutureBuilder(
          future: Apis().fetchProgram(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var programs = snapshot.data!;
              if (programs.length > 6) {
                programs = programs.sublist(0, 6);
              }
              return Row(
                children: programs
                    .map(
                      (e) => CustomCard(
                        subTitle: e.category,
                        time: "${e.lesson} lessons",
                        title: e.name,
                      ),
                    )
                    .toList(),
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
