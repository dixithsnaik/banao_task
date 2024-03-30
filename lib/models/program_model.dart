class Program {
  final String createdAt;
  final String name;
  final String category;
  final int lesson;
  final String id;

  Program({
    required this.createdAt,
    required this.name,
    required this.category,
    required this.lesson,
    required this.id,
  });

  factory Program.fromJson(Map<String, dynamic> map) {
    return Program(
      createdAt: map["createdAt"],
      name: map['name'],
      category: map['category'],
      lesson: map['lesson'],
      id: map['id'],
    );
  }
}
