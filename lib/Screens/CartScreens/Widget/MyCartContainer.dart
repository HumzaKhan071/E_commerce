import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCartContainer extends StatelessWidget {
  final String image;
  const MyCartContainer({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 120,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(7)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Icon(
                Icons.close,
                color: Color(0xffD6D6D6),
              )
            ]),
            Row(
              children: [
                Image.asset(image),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hawaian Shirt",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          letterSpacing: 1,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sandy Williams".toUpperCase(),
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w600,
                          fontSize: 9,
                          letterSpacing: 1,
                          color: Color(0xffD6D6D6)),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Text("\$ 25.99",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        letterSpacing: 1,
                        color: Color(0xffFE2550)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
