import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:recruitment_task/data/models/hadith.dart';
import 'package:recruitment_task/data/models/hadith_section_model.dart';
import 'package:recruitment_task/presentation/views/Hadith/widget/chapter_card_item.dart';
import 'package:recruitment_task/presentation/views/Hadith/widget/hadis_card_item.dart';

import '../../../data/network/data_base_helper.dart';

class HadithView extends StatefulWidget {
  final String hadithBookName;
  final String hadithSectionName;

  const HadithView(
      {super.key,
      required this.hadithBookName,
      required this.hadithSectionName});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  //------------>variable<--------------------//

  late DataBaseHelper _databaseHelper;
  List<HadithSectionModel> _section = [];
  List<Hadith> _hadith = [];

//------------> get Chapter name<--------------------//

  Future<void> _fetchBooks() async {
    print("-------------$_section");

    await _databaseHelper.init();
    List<HadithSectionModel> books = await _databaseHelper.getAllSection();
    setState(() {
      _section = books;
      print("--------------------------${jsonEncode(_section)}");
    });
  }

//------------> get Chapter name<--------------------//

  Future<void> _fetchHadith() async {
    print("-------------$_hadith");

    await _databaseHelper.init();
    List<Hadith> hadith = await _databaseHelper.getAllCHadith();
    setState(() {
      _hadith = hadith;
      print("--------------------------${jsonEncode(hadith)}");
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _databaseHelper = DataBaseHelper();
      _fetchBooks();
      _fetchHadith();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              //------------>action button<--------------------//

              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.swap_horiz),
                )
              ],
              title: Padding(
                padding:
                    const EdgeInsets.only(top: 25.0, right: 20, bottom: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.hadithBookName,
                        style: theme.textTheme.titleLarge
                            ?.copyWith(color: theme.colorScheme.onPrimary),
                      ),
                      Text(
                        widget.hadithSectionName,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: theme.colorScheme.onPrimary.withOpacity(
                            .6,
                          ),
                        ),
                      ),
                    ]),
              ),
            )
          ];
        },
        //------------>body part<--------------------//

        body: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: theme.scaffoldBackgroundColor,
            ),
            child: _section.isEmpty || _hadith.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: _section.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ChapterCardItem(
                            chapterNo: _section[index].number ?? "",
                            chapterTitle:
                                index == 0 ? _section[index].title ?? "" : "",
                            chapterSubTitle: _section[index].preface ?? "",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          HadisCardItem(
                            chapterNo: (index + 1).toString(),
                            chapterTitle: widget.hadithBookName,
                            chapterSubTitle: "",
                            arbiText: _hadith[index].ar ?? "",
                            banglaTextTitle: _hadith[index].narrator ?? "",
                            banglaTextSubTitle: _hadith[index].bn ?? "",
                          )
                        ],
                      );
                    })),
      ),
    );
  }
}
