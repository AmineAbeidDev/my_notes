import 'package:my_notes/constants/database.dart';

class Note {
  final String? title;
  final String content;
  final String created;
  final String lastUpdate;

  Note({
    this.title,
    required this.content,
    required this.created,
    required this.lastUpdate,
  });
  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'content': content,
      'created': created,
      'last_update': lastUpdate,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return '$dbName{title: $title, content: $content, created: $created, last_update: $lastUpdate}';
  }
}
