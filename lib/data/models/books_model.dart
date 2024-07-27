// To parse this JSON data, do
//
//     final booksModel = booksModelFromJson(jsonString);

import 'dart:convert';

BooksModel booksModelFromJson(String str) => BooksModel.fromJson(json.decode(str));

String booksModelToJson(BooksModel data) => json.encode(data.toJson());

class BooksModel {
  int? id;
  String? title;
  String? titleAr;
  int? numberOfHadis;
  String? abvrCode;
  String? bookName;
  String? bookDescr;

  BooksModel({
    this.id,
    this.title,
    this.titleAr,
    this.numberOfHadis,
    this.abvrCode,
    this.bookName,
    this.bookDescr,
  });

  factory BooksModel.fromJson(Map<String, dynamic> json) => BooksModel(
    id: json["id"],
    title: json["title"],
    titleAr: json["title_ar"],
    numberOfHadis: json["number_of_hadis"],
    abvrCode: json["abvr_code"],
    bookName: json["book_name"],
    bookDescr: json["book_descr"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "title_ar": titleAr,
    "number_of_hadis": numberOfHadis,
    "abvr_code": abvrCode,
    "book_name": bookName,
    "book_descr": bookDescr,
  };
}
