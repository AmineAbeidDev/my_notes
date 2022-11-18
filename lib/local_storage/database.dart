import 'package:my_notes/constants/database.dart';

class Note {
  final String content;
  final String created;
  final String lastUpdate;

  Note({
    required this.content,
    required this.created,
    required this.lastUpdate,
  });
  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'created': created,
      'last_update': lastUpdate,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return '$dbName{content: $content, created: $created, last_update: $lastUpdate}';
  }
}
