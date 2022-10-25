import 'package:e_commerce/Screens/ProductScreens/ProductScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAddContainer extends StatelessWidget {
  const MyAddContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductScreen()));
      },
      child: Container(
        height: 412,
        width: double.infinity,
        color: Color(0xffffffff),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/avatar1.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sandy Williams",
                          style: GoogleFonts.raleway(
                              fontSize: 14, color: Color(0xff212224)),
                        ),
                        Text(
                          "Freelance Tailor",
                          style: GoogleFonts.raleway(
                              fontSize: 14, color: Color(0xffD6D6D6)),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/heart.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "2.3k",
                      style: GoogleFonts.raleway(
                          fontSize: 12, color: Color(0xffD6D6D6)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "If you are looking for the latest and the most stylish Pakistan lawn collection 2018 with chiffon dupatta, you have come at the right place as Alkaram has brought fully embroidered lawn suits with chiffon and sleeves in its wide range of stitched and unstitched lawn suits.",
              style: GoogleFonts.raleway(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset("assets/picture1.png"),
                SizedBox(
                  width: 10,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    children: [
                      Image.asset("assets/1.png"),
                      Image.asset("assets/2.png"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/1.png"),
                      Image.asset("assets/2.png"),
                    ],
                  ),
                ]),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 69,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xffFE2550),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Text(
                          "#Summer",
                          style: GoogleFonts.raleway(
                              fontSize: 12, color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 69,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xffFE2550),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Center(
                        child: Text(
                          "#Purple",
                          style: GoogleFonts.raleway(
                              fontSize: 12, color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(children: [
                  Image.asset("assets/Share.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "1.2k",
                    style: GoogleFonts.raleway(
                        fontSize: 12, color: Color(0xffD6D6D6)),
                  )
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
