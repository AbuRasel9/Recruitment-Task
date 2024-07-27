import 'dart:io' as io;
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:recruitment_task/data/models/books_model.dart';
import 'package:recruitment_task/data/models/chapter_name.dart';
import 'package:recruitment_task/data/models/hadith.dart';
import 'package:recruitment_task/data/models/hadith_section_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

class DataBaseHelper {
  Database? _db;

  Future<void> init() async {
    io.Directory applicationDirectory =
        await getApplicationDocumentsDirectory();
    String dbPathHadis = path.join(applicationDirectory.path, "hadith_db.db");
    bool dbExistsHadis = await io.File(dbPathHadis).exists();

    if (!dbExistsHadis) {
      // Copy from asset
      ByteData data =
          await rootBundle.load(path.join("assets", "hadith_db.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await io.File(dbPathHadis).writeAsBytes(bytes, flush: true);
    }

    _db = await openDatabase(dbPathHadis);
  }

  // Get all the books from the "books" table
  Future<List<BooksModel>> getAllBookTable() async {
    if (_db == null) {
      throw "Database is not initialized. Call [init()] first.";
    }

    List<Map<String, dynamic>>? books;
    await _db?.transaction((txn) async {
      books = await txn.query(
        "books",
        columns: ["title", "number_of_hadis"],
      );
    });

    return books?.map((e) => BooksModel.fromJson(e)).toList() ?? [];
  }
  //get all chapter name form the database
  Future<List<ChapterNameModel>> getAllCHaptar() async {
    if (_db == null) {
      throw "Database is not initialized. Call [init()] first.";
    }

    List<Map<String, dynamic>>? books;
    await _db?.transaction((txn) async {
      books = await txn.query(
        "chapter",
        columns: ["title", "hadis_range"],
      );
    });

    return books?.map((e) => ChapterNameModel.fromJson(e)).toList() ?? [];
  }
  //get all chapter name form the database
  Future<List<HadithSectionModel>> getAllSection() async {
    if (_db == null) {
      throw "Database is not initialized. Call [init()] first.";
    }

    List<Map<String, dynamic>>? books;
    await _db?.transaction((txn) async {
      books = await txn.query(
        "section",
        columns: ["title", "preface","number"],
      );
    });

    return books?.map((e) => HadithSectionModel.fromJson(e)).toList() ?? [];
  }



  //------------>get all hadith<--------------------//

  //get all chapter name form the database
  Future<List<Hadith>> getAllCHadith() async {
    if (_db == null) {
      throw "Database is not initialized. Call [init()] first.";
    }

    List<Map<String, dynamic>>? books;
    await _db?.transaction((txn) async {
      books = await txn.query(
        "hadith",
        columns: ["narrator","ar", "bn",],
      );
    });

    return books?.map((e) => Hadith.fromJson(e)).toList() ?? [];
  }



}
