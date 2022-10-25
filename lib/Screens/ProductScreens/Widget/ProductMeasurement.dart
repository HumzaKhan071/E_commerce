import 'package:e_commerce/Screens/MeasurementScreens/MeasurementScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductMeasurement extends StatelessWidget {
  const ProductMeasurement({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "WAIST",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      letterSpacing: 1,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "LENGTH",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      letterSpacing: 1,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "BREADTH",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      letterSpacing: 1,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100.94,
                  height: 36,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "43",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          letterSpacing: 1,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100.94,
                  height: 36,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "34",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          letterSpacing: 1,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 100.94,
                  height: 36,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "76",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          letterSpacing: 1,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Color:",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      letterSpacing: 1,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(radius: 15, backgroundColor: Color(0xff363641)),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(radius: 15, backgroundColor: Color(0xffEFE8D8)),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xff43163A),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Color(0xffF2F2F2),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0xff43163A),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 96,
                  height: 32,
                  decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "1",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Colors.black),
                      ),
                      FaIcon(FontAwesomeIcons.caretDown)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Text(
              "Do you want to use this material",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  letterSpacing: 1,
                  color: Colors.black),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Container(
                  width: 71,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffFE2550)),
                  child: Center(
                    child: Text(
                      "YES",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          letterSpacing: 1,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 71,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffF2F2F2)),
                  child: Center(
                    child: Text(
                      "NO",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          letterSpacing: 1,
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Divider(
              color: Color(0xffF2F2F2),
              thickness: 1,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(
                  text: "Total: ",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      letterSpacing: 1,
                      color: Color(0xff999999)),
                  children: [
                    TextSpan(
                      text: "\$ 25.99",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          letterSpacing: 1,
                          color: Color(0xffFE2550)),
                    ),
                  ],
                )),
                Container(
                  width: 209,
                  height: 52,
                  decoration: BoxDecoration(
                      color: Color(0xffFE2550),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MeasurementScreen()));
                      },
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
