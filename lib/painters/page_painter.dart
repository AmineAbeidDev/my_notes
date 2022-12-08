import 'package:flutter/material.dart';
import 'package:my_notes/constants/colors.dart';

class PagePainter extends CustomPainter {
  //! Painting instructions
  @override
  void paint(Canvas canvas, Size size) {
    //! draws rectangle with grey color
    // final paintWhite = Paint()..color = primaryColor;
    // var rrectWhite = RRect.fromLTRBR(
    //   5,
    //   0,
    //   size.width,
    //   size.height,
    //   const Radius.circular(8.0),
    // );
    // canvas.drawRRect(rrectWhite, paintWhite);

    //! horizontal lines
    //!draws line from Offset(0, size.height * .2) i.e 20% of height from left side to Offset(size.width, size.height * .2) i.e 20% of height to right side.
    final paintDarkgrey = Paint()
      ..color = secondaryColor
      ..strokeWidth = 1.0;
    canvas.drawLine(Offset(0, size.height * .13),
        Offset(size.width, size.height * .13), paintDarkgrey);

    //! creates a vertical line
    // final paintPink = Paint()
    //   ..color = Colors.pinkAccent
    //   ..strokeWidth = 2.5;
    // canvas.drawLine(Offset(size.width * .1, 0),
    //     Offset(size.width * .1, size.height), paintPink);
  }

  //! should draw or not
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}
