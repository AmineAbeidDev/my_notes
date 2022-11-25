import 'dart:developer';

import 'package:my_notes/constants/database.dart';
import 'package:my_notes/storage/local_storage/database.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocalStorage {
  LocalStorage._sharedInstance();
  static final LocalStorage _shared = LocalStorage._sharedInstance();
  factory LocalStorage() => _shared;

  late final Database database;

  //! Creates database
  Future<void> createDb() async {
    database = await openDatabase(
      join(await getDatabasesPath(), dbName),
      onCreate: (db, version) {
        return db.execute(dbQuery);
      },
      version: 1,
    );
  }

  //! Insert new db element
  Future<void> insertNote(final Note note) async {
    final db = database;
    int id = await db.insert(
      tableName,
      note.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    log('note id: $id has been added to $tableName');
  }

  //! Deletes a db element
  Future<void> deleteNote(final int id) async {
    final db = database;

    await db.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteAllNotes() async {
    final db = database;

    await db.delete(
      tableName,
    );
  }

//! Update a db element
  Future<void> updateNote(final id, final note) async {
    final db = database;

    await db.update(
      tableName,
      note.toMap(),
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  //! Gets table
  Future<void> printDatabase() async {
    final db = database;

    await db.query(tableName).then((value) {
      log('\n________________________________________________');
      for (var val in value) {
        log(val.toString());
      }
    });
    log('________________________________________________\n');
  }

  //! converts map of notes to a list
  Future<List<Note>> notesToList() async {
    final db = database;
    final List<Map<String, dynamic>> maps = await db.query(tableName);

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return Note(
        title: maps[i]['title'],
        content: maps[i]['content'],
        created: maps[i]['created'],
        lastUpdate: maps[i]['last_update'],
      );
    });
  }
}
