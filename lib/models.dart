class Note {
  final int? id;
  final String title;
  final String age;
  final String description;
  final String email;

  Note(
      {this.id,
      required this.title,
      required this.age,
      required this.description,
      required this.email});

  Note.fromMap(Map<String, dynamic> res)
      : id = res['id'],
        title = res['title'],
        age = res['age'],
        description = res['description'],
        email = res['email'];

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'title': title,
      'age': age,
      'description': description,
      'email': email,
    };
  }
}
