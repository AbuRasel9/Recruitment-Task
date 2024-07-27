// To parse this JSON data, do
//
//     final hadithSectionModel = hadithSectionModelFromJson(jsonString);

import 'dart:convert';

Hadith hadithSectionModelFromJson(String str) => Hadith.fromJson(json.decode(str));

String hadithSectionModelToJson(Hadith data) => json.encode(data.toJson());

class Hadith {
  int? hadithId;
  int? bookId;
  String? bookName;
  int? chapterId;
  String? narrator;
  String? bn;
  String? ar;
  String? arDiacless;
  String? note;
  String? gradeId;
  String? grade;
  String? gradeColor;

  Hadith({
    this.hadithId,
    this.bookId,
    this.bookName,
    this.chapterId,
    this.narrator,
    this.bn,
    this.ar,
    this.arDiacless,
    this.note,
    this.gradeId,
    this.grade,
    this.gradeColor,
  });

  factory Hadith.fromJson(Map<String, dynamic> json) => Hadith(
    hadithId: json["hadith_id"],
    bookId: json["book_id"],
    bookName: json["book_name"],
    chapterId: json["chapter_id"],
    narrator: json["narrator"],
    bn: json["bn"],
    ar: json["ar"],
    arDiacless: json["ar_diacless"],
    note: json["note"],
    gradeId: json["grade_id"],
    grade: json["grade"],
    gradeColor: json["grade_color"],
  );

  Map<String, dynamic> toJson() => {
    "hadith_id": hadithId,
    "book_id": bookId,
    "book_name": bookName,
    "chapter_id": chapterId,
    "narrator": narrator,
    "bn": bn,
    "ar": ar,
    "ar_diacless": arDiacless,
    "note": note,
    "grade_id": gradeId,
    "grade": grade,
    "grade_color": gradeColor,
  };
}
