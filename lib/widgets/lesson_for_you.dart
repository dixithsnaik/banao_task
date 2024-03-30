import 'package:banao_task1/globles/secrets.dart';
import 'package:banao_task1/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class LessonForYou extends StatelessWidget {
  const LessonForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 6),
          child: FutureBuilder(
            future: Apis().fetchLessons(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var lessons = snapshot.data!;
                if (lessons.length > 6) {
                  lessons = lessons.sublist(0, 6);
                }
                return Row(
                  children: lessons
                      .map(
                        (e) => CustomCard(
                          isbutton: true,
                          isIconButton: true,
                          subTitle: e.category,
                          time: "${e.duration} min",
                          title: e.name,
                        ),
                      )
                      .toList(),
                );
              }
              return const CircularProgressIndicator();
            },
          )),
    );
  }
}
