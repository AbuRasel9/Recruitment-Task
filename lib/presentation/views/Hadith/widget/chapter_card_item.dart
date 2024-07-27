import 'package:flutter/material.dart';

class ChapterCardItem extends StatelessWidget {
  final String chapterNo;
  final String chapterTitle;
  final String chapterSubTitle;

  const ChapterCardItem({
    super.key,
    required this.chapterNo,
    required this.chapterTitle,
    required this.chapterSubTitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only( left: 10,right: 10,top: 15),
      child: Padding(
        padding: const EdgeInsets.all( 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: RichText(
                text: TextSpan(
                  text: chapterNo,
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: chapterTitle,
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ),
           chapterSubTitle!=""? Divider(
              color: theme.colorScheme.onSurface.withOpacity(
                0.4,
              ),
            ):const SizedBox(),
            chapterSubTitle!=""?  Text(
              chapterSubTitle,
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(
                  .7,
                ),
              ),
            ):const SizedBox(),
          ],
        ),
      ),
    );
  }
}
