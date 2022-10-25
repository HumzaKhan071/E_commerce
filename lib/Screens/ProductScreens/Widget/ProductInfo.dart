import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("MATERIALS",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    letterSpacing: 1,
                    color: Colors.black)),
            SizedBox(
              height: 10,
            ),
            Text(
                "AS SEEN IN REDBOOK! You'll be primed and ready in the Perfect Situation Purple Long Sleeve Shift Dress when everything starts falling into place! This woven poly dress has a casual shift shape, accented by a rounded neckline.",
                style: GoogleFonts.raleway(
                    height: 2,
                    fontSize: 10,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            Text("WASH INSTRUCTIONS",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    letterSpacing: 1,
                    color: Colors.black)),
            SizedBox(
              height: 10,
            ),
            Text(
                "The basic principle goes like this: You fill a large basin, tub, or sink with lukewarm water. You stir in a mild detergent (not a “detergent soap” — use plain detergent, otherwise some garments will get soap stains)",
                style: GoogleFonts.raleway(
                    height: 2,
                    fontSize: 10,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w400,
                    color: Colors.black)),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 209,
                  height: 52,
                  decoration: BoxDecoration(
                      color: Color(0xffFE2550),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Add to Bag",
                        style: GoogleFonts.raleway(
                            fontSize: 14,
                            letterSpacing: 0.63,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
