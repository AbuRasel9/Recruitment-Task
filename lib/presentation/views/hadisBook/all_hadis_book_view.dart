import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:recruitment_task/presentation/views/bookChapter/hadith_book_chapter.dart';
import 'package:recruitment_task/presentation/views/hadisBook/widget/hadis_book_name_card.dart';

import '../../../data/models/books_model.dart';
import '../../../data/network/data_base_helper.dart';

class AllHadisBookView extends StatefulWidget {
  const AllHadisBookView({super.key});

  @override
  State<AllHadisBookView> createState() => _AllHadisBookViewState();
}

class _AllHadisBookViewState extends State<AllHadisBookView> {
  //------------>variable<--------------------//

  late DataBaseHelper _databaseHelper;
  List<BooksModel> _books = [];

//------------> get Chapter name<--------------------//

  Future<void> _fetchBooks() async {
    print("-------------$_books");

    await _databaseHelper.init();
    List<BooksModel> books = await _databaseHelper.getAllBookTable();
    setState(() {
      _books = books;
      print("--------------------------${jsonEncode(_books)}");
    });
  }

  @override
  void initState() {
    super.initState();
    _databaseHelper = DataBaseHelper();
    _fetchBooks();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "সব হাদিসের বই",
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
      ),
      body: _books.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _books.length,
              itemBuilder: (context, index) {
                return HadithBookNameItem(
                  bookName: _books[index].title ?? "",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HadithBookChapter(
                          bookName: _books[index].title ?? "",
                          numOfHadith:
                              _books[index].numberOfHadis.toString(),
                        ),
                      ),
                    );
                  },
                );
              }),
    );
  }
}
