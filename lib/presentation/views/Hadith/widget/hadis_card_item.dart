import 'package:flutter/material.dart';

class HadisCardItem extends StatelessWidget {
  final String chapterNo;
  final String chapterTitle;
  final String chapterSubTitle;
  final String arbiText;
  final String banglaTextTitle;
  final String banglaTextSubTitle;

  const HadisCardItem({
    super.key,
    required this.chapterNo,
    required this.chapterTitle,
    required this.chapterSubTitle, required this.arbiText, required this.banglaTextTitle, required this.banglaTextSubTitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(
          15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //------------> hadis <--------------------//

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //------------>hadis left part<--------------------//

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/star_image.png",
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chapterTitle,
                          style: theme.textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "হাদিস: $chapterNo",
                          style: theme.textTheme.titleLarge
                              ?.copyWith(color: theme.colorScheme.primary),
                        )
                      ],
                    )
                  ],
                ),
                //------------>hadis right part<--------------------//

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Chip(
                      side: BorderSide.none,
                      backgroundColor:
                          theme.colorScheme.secondary.withOpacity(.7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      label: Text(
                        "সহিহ বুখারী",
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.more_vert_rounded,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //------------>arabic text<--------------------//
            Text(
              arbiText,
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(

              banglaTextTitle,
              style: theme.textTheme.titleLarge?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Text(
              banglaTextSubTitle,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w400,
                wordSpacing: 3,

              )
            )
          ],
        ),
      ),
    );
  }
}
