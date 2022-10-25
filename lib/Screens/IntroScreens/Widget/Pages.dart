import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../HomeScreens/HomeScreen.dart';


class Pages extends StatelessWidget {
  final String image;
  final String number;
  final String title;
  final String description;

  const Pages({
    super.key,
    required this.image,
    required this.number,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.5,
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: "NO",
                        style: GoogleFonts.raleway(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 17)),
                    TextSpan(
                        text: " $number",
                        style: GoogleFonts.abrilFatface(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 40))
                  ]),
                ),
                Text(
                  "FEATURED",
                  style: GoogleFonts.abrilFatface(
                      color: Color(0xffFE2550),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                Text(
                  "Tailored",
                  style: GoogleFonts.abrilFatface(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: title,
                        style: GoogleFonts.raleway(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    TextSpan(
                        text: description,
                        style: GoogleFonts.raleway(
                            color: Color(0xffFFFFFF), fontSize: 17))
                  ]),
                ),
                SizedBox(height: 20),
                Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => HomeScreen()));
                      },
                      child: Text("Shop Now",
                          style: GoogleFonts.raleway(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 20))),
                )
              ]),
        ));
  }
}
