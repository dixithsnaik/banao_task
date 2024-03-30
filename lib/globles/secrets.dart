import 'dart:convert';

import 'package:banao_task1/models/lesson_model.dart';
import 'package:banao_task1/models/program_model.dart';
import 'package:http/http.dart' as http;

class Apis {
  final programApi =
      Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs');
  final lessonApi =
      Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/lessons");

  Future<List<Program>> fetchProgram() async {
    try {
      final program = await http.get(programApi);
      final programData = jsonDecode(program.body);
      print(programData);
      final data = programData['items'] as List;
      final programs = <Program>[];
      for (var e in data) {
        final temp = Program.fromJson(e);
        programs.add(temp);
      }
      print('getting programs sucussfull');
      return programs;
    } catch (e) {
      print('error getting programs; $e');

      return [];
    }
  }

  Future<List<Lesson>> fetchLessons() async {
    try {
      final lesson = await http.get(lessonApi);
      final lessonData = jsonDecode(lesson.body);
      print(lessonData);
      final data = lessonData['items'] as List;
      final lessons = <Lesson>[];
      for (var e in data) {
        final temp = Lesson.fromJson(e);
        lessons.add(temp);
      }
      print('getting lessons sucussfull');
      return lessons;
    } catch (e) {
      print('error getting lessons; $e');

      return [];
    }
  }
}
