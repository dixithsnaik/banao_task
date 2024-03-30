class Lesson {
  final String createdAt;
  final String name;
  final String category;
  final int duration;
  final bool locked;
  final String id;

  Lesson({
    required this.createdAt,
    required this.name,
    required this.category,
    required this.duration,
    required this.id,
    required this.locked,
  });

  factory Lesson.fromJson(Map<String, dynamic> map) {
    return Lesson(
      createdAt: map["createdAt"],
      name: map['name'],
      category: map['category'],
      duration: map['duration'],
      locked: map['locked'],
      id: map['id'],
    );
  }
}
