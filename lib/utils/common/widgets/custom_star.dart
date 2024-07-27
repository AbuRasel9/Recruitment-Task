
import 'package:flutter/cupertino.dart';

class CustomStar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 2 * size.height / 3);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, 2 * size.height / 3);
    path.lineTo(0, size.height / 3);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
