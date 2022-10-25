import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/Screens/ProductScreens/Widget/ProductInfo.dart';
import 'package:e_commerce/Screens/ProductScreens/Widget/ProductMeasurement.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    final Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Bitmap.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios_new)),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.heart,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              FontAwesomeIcons.share,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.33,
                    ),
                    DotsIndicator(
                      dotsCount: 4,
                      position: 0,
                      decorator: DotsDecorator(
                        color: Color(0xffFFFFFF), // Inactive color
                        activeColor: Colors.redAccent,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "Perfect Situation Purple Long Sleeve Dress",
                  style: GoogleFonts.raleway(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "\$ 29.99",
                  style: GoogleFonts.raleway(
                      fontSize: 14, color: Color(0xffFE2550)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TabBar(
                  indicatorColor: Color(0xffFE2550),
                  labelColor: Colors.black,
                  unselectedLabelColor: Color(0xffD6D6D6),
                  tabs: [
                    Tab(
                      text: "INFO",
                    ),
                    Tab(
                      text: "MEASUREMENTS",
                    ),
                  ]),
            ],
          ),
        ),
        body: TabBarView(children: [ProductInfo(), ProductMeasurement()]),
      ),
    );
  }
}
