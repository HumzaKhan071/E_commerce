import 'package:e_commerce/Screens/MeasurementScreens/Model/MyTextModel.dart';
import 'package:e_commerce/Screens/ProductScreens/ProductPage.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'Widget/MyText.dart';

class MeasurementScreen extends StatelessWidget {
  const MeasurementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(color: Color(0xffFE2550)),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProductPage();
                }));
              },
              child: Text(
                "DONE",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    letterSpacing: 1,
                    color: Colors.white),
              ),
            )),
      ],
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 35,
        title: Text("Specify Material",
            style: GoogleFonts.abrilFatface(
                color: Colors.black,
                fontSize: 24,
                letterSpacing: -0.3,
                fontWeight: FontWeight.w400)),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8.0, right: 8, bottom: 8, left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    myTextModel.length,
                    (index) => MyText(
                          text: myTextModel[index].text,
                          color: myTextModel[index].color,
                          fontWeight: myTextModel[index].fontWeight,
                        )),
              ),
              SizedBox(
                height: 20,
              ),
              Text("ENTER THE COLOR",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      letterSpacing: 1,
                      color: Colors.black)),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(radius: 15, backgroundColor: Color(0xff363641)),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(radius: 15, backgroundColor: Color(0xffEFE8D8)),
                  SizedBox(
                    width: 10,
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
                    width: 10,
                  ),
                  CircleAvatar(radius: 15, backgroundColor: Color(0xff00AEFF)),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(radius: 15, backgroundColor: Color(0xffFC8233)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("hOW mANY Yards?".toUpperCase(),
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      letterSpacing: 1,
                      color: Colors.black)),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 263,
                height: 44,
                decoration: BoxDecoration(
                    color: Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    "5",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        letterSpacing: 1,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
