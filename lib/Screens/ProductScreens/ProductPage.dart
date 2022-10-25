import 'package:e_commerce/Screens/CartScreens/CartScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/picture2.png",
                ),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  )),
              SizedBox(
                height: size.height * 0.5,
              ),
              Center(
                child: Container(
                  width: 333,
                  height: 186,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/shirt.png"),
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
                                height: 5,
                              ),
                              Text(
                                "Sandy Williams".toUpperCase(),
                                style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 9,
                                    letterSpacing: 1,
                                    color: Color(0xffD6D6D6)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "If you are looking for the latest and the",
                                style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff212224)),
                              ),
                              Text(
                                "most stylish Pakistan lawn collection ",
                                style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff212224)),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Color(0xffD6D6D6),
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$ 25.99",
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                letterSpacing: 1,
                                color: Color(0xffFE2550),
                              )),
                          CircleAvatar(
                              backgroundColor: Color(0xffFE2550),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => CartScreen()));
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
