import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recruitment_task/data/models/chapter_name.dart';

import '../../../data/network/data_base_helper.dart';
import '../Hadith/hadith_view.dart';

class HadithBookChapter extends StatefulWidget {
  final String bookName;
  final String numOfHadith;

  const HadithBookChapter({
    super.key,
    required this.bookName,
    required this.numOfHadith,
  });

  @override
  State<HadithBookChapter> createState() => _HadithBookChapterState();
}

class _HadithBookChapterState extends State<HadithBookChapter> {
  //------------>variable<--------------------//

  late DataBaseHelper _databaseHelper;
  List<ChapterNameModel> _chapter = [];

//------------> get Chapter name<--------------------//

  Future<void> _fetchBooks() async {
    print("-------------$_chapter");

    await _databaseHelper.init();
    List<ChapterNameModel> books = await _databaseHelper.getAllCHaptar();
    setState(() {
      _chapter = books;
      print("--------------------------${jsonEncode(_chapter)}");
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.bookName,
              style: theme.textTheme.bodyLarge
                  ?.copyWith(color: theme.colorScheme.onPrimary),
            ),
            Text(
              "${widget.numOfHadith} টি হাদিস",
              style: theme.textTheme.bodyLarge
                  ?.copyWith(color: theme.colorScheme.onPrimary),
            ),
          ],
        ),
      ),
      body: _chapter.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: _chapter.length,
              itemBuilder: (context, index) {
                return _chapter.isEmpty
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HadithView(
                                hadithBookName: widget.bookName,
                                hadithSectionName:_chapter[index].title ?? ""
                              ),
                            ),
                          );
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/hexagon.png",
                                      ),
                                    ),
                                  ),
                                  child: Center(
                                      child: Text(
                                    (index + 1).toString(),
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: theme.colorScheme.onPrimary),
                                  )),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _chapter[index].title ?? "",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "হাদিসের রেঞ্জ : ${_chapter[index].hadisRange} ",
                                      style: theme.textTheme.titleLarge
                                          ?.copyWith(
                                              color: theme.colorScheme.primary),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
              }),
    );
  }
}
