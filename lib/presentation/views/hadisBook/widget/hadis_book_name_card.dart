import 'package:flutter/material.dart';

class HadithBookNameItem extends StatelessWidget {

  final String bookName;
  final VoidCallback onPressed;
  const HadithBookNameItem({
    super.key,
    required this.bookName, required this.onPressed,
  }) ;



  @override
  Widget build(BuildContext context) {
    final theme=Theme.of(context);
    return InkWell(
      onTap: onPressed,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
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
                    bookName,
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "ইমাম বুখারি ",
                    style: theme.textTheme.titleLarge
                        ?.copyWith(color: theme.colorScheme.primary),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
