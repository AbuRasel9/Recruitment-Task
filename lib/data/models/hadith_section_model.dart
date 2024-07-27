// To parse this JSON data, do
//
//     final hadithSectionModel = hadithSectionModelFromJson(jsonString);

import 'dart:convert';

HadithSectionModel hadithSectionModelFromJson(String str) => HadithSectionModel.fromJson(json.decode(str));

String hadithSectionModelToJson(HadithSectionModel data) => json.encode(data.toJson());

class HadithSectionModel {
  int? id;
  int? chapterId;
  int? bookId;
  int? sectionId;
  String? title;
  String? preface;
  String? number;

  HadithSectionModel({
    this.id,
    this.chapterId,
    this.bookId,
    this.sectionId,
    this.title,
    this.preface,
    this.number,
  });

  factory HadithSectionModel.fromJson(Map<String, dynamic> json) => HadithSectionModel(
    id: json["id"],
    chapterId: json["chapter_id"],
    bookId: json["book_id"],
    sectionId: json["section_id"],
    title: json["title"],
    preface: json["preface"],
    number: json["number"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "chapter_id": chapterId,
    "book_id": bookId,
    "section_id": sectionId,
    "title": title,
    "preface": preface,
    "number": number,
  };
}
