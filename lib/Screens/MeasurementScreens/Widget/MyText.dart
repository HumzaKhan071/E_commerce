import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color color;
  const MyText({
    super.key,
    required this.text,
    required this.color,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Text("$text".toUpperCase(),
          style: GoogleFonts.raleway(
              fontWeight: fontWeight,
              fontSize: 14,
              letterSpacing: 1,
              color: color)),
    );
  }
}