// To parse this JSON data, do
//
//     final chapterNameModel = chapterNameModelFromJson(jsonString);

import 'dart:convert';

ChapterNameModel chapterNameModelFromJson(String str) => ChapterNameModel.fromJson(json.decode(str));

String chapterNameModelToJson(ChapterNameModel data) => json.encode(data.toJson());

class ChapterNameModel {
  int? id;
  int? chapterId;
  int? bookId;
  String? title;
  int? number;
  String? hadisRange;
  String? bookName;

  ChapterNameModel({
    this.id,
    this.chapterId,
    this.bookId,
    this.title,
    this.number,
    this.hadisRange,
    this.bookName,
  });

  factory ChapterNameModel.fromJson(Map<String, dynamic> json) => ChapterNameModel(
    id: json["id"],
    chapterId: json["chapter_id"],
    bookId: json["book_id"],
    title: json["title"],
    number: json["number"],
    hadisRange: json["hadis_range"],
    bookName: json["book_name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "chapter_id": chapterId,
    "book_id": bookId,
    "title": title,
    "number": number,
    "hadis_range": hadisRange,
    "book_name": bookName,
  };
}
