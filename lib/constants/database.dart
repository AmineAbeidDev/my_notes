const dbName = 'database.db';
const tableName = 'note';
const dbQuery =
    'CREATE TABLE $tableName (id INTEGER PRIMARY KEY, content TEXT, created TEXT, last_update TEXT)';
