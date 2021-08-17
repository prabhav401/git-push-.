import 'dart:io';
import 'package:google_signin_example/Models/TaskModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._instance();
  static Database _db;
  DatabaseHelper._instance();

  String tableName = 'moviesDirectory';
  String colId = "id";
  String colName = 'movieName';
  String colDirector = 'directorName';
  String colImage = 'imageURL';
  String colWatch = 'watchStatus';

  Future<Database> get db async {
      if (_db == null){
        _db = await _initDb();
      }
      return _db;
  }

  Future <Database> _initDb() async {
      Directory dir = await getApplicationDocumentsDirectory();
      String path = dir.path + 'moviesDirectory.db';
      final moviesDirectoryDb = await openDatabase(path, version: 1, onCreate: _createDb);
      return moviesDirectoryDb;
  }

    void _createDb (Database db, int version) async {
    await db.execute(
      'CREATE TABLE $tableName($colId INTEGER PRIMARY KEY AUTOINCREMENT,$colName TEXT, $colName TEXT, $colDirector TEXT, $colImage TEXT, $colWatch INTEGER)',
    );
  }

  Future <List<Map<String, dynamic>>> getMovieMapList() async {
    Database db = await this.db;
    final List<Map<String, dynamic>> result = await db.query(tableName);
    return result;
  }

  Future <List <Task> > getMoviesList() async {
    final List<Map<String, dynamic>> taskMapList = await getMovieMapList();
    final List<Task> taskList = [];
    taskMapList.forEach((taskMap) {  
      taskList.add(Task.fromMap(taskMap));
    });
    return taskList;
  }

  // insert into db function
  Future<int> insertTask (Task task) async {
    Database db = await this.db;
    final int result = await db.insert(tableName, task.toMap());
    return result;
  }

  // update tasks
  Future<int> updateTask(Task task) async {
    Database db = await this.db;
    final int result = await db.update(tableName, task.toMap(),
        where: '$colId = ?', whereArgs: [task.id]);
    return result;
  }

  // delete db data
  Future <int> deleteTask (int id) async {
    Database db = await this.db;
    final int result = await db.delete(tableName, where: '$colId = ?', whereArgs: [id],
    );
    return result;
  }
}