import 'package:e_commerce/Screens/HomeScreens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xffD4EFDF),
                child: Icon(
                  Icons.check,
                  color: Color(0xff27AE60),
                  size: 50,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Payment Sucessful",
                style: GoogleFonts.abrilFatface(
                    fontSize: 24, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Your order will be ready in 5 days,",
                  style: GoogleFonts.raleway(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              Text("including shipping, more details and",
                  style: GoogleFonts.raleway(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              Text("options for tracking will be sent to",
                  style: GoogleFonts.raleway(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              Text("your email",
                  style: GoogleFonts.raleway(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 30,
              ),
              Text("Thanks!!!",
                  style: GoogleFonts.raleway(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 228,
                height: 52,
                decoration: BoxDecoration(
                    color: Color(0xffFE2550),
                    borderRadius: BorderRadius.circular(5)),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => HomeScreen()));
                    },
                    child: Text(
                      "Continue Shopping",
                      style: GoogleFonts.raleway(
                          fontSize: 14,
                          letterSpacing: 0.63,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
              )
            ],
          ),
        )
      ],
    ));
  }
}
