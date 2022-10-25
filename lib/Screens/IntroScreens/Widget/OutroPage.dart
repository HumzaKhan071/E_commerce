import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../HomeScreens/HomeScreen.dart';

class OutroPage extends StatelessWidget {
  const OutroPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Intro4.png"),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/Insta_icon.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Continue with Instagram",
                              style: GoogleFonts.raleway(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24)),
                        ],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: "By clicking this button you agree to our ",
                        style: GoogleFonts.raleway(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 17)),
                    TextSpan(
                        text: "terms of service ",
                        style: GoogleFonts.raleway(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 17)),
                    TextSpan(
                        text: " and ",
                        style: GoogleFonts.raleway(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 17)),
                    TextSpan(
                        text: "privacy policy ",
                        style: GoogleFonts.raleway(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            fontSize: 17)),
                  ]),
                ),
              ]),
        ));
  }
}
