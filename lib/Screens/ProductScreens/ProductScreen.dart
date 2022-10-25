import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/Screens/HomeScreens/Widget/MyAddContainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_indicator/page_indicator.dart';

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
        body: Column(
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
                          icon: FaIcon(FontAwesomeIcons.arrowLeftLong)),
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
            Text(
              "Perfect Situation Purple Long Sleeve Dress",
              style: GoogleFonts.raleway(
                fontSize: 16,
              ),
            ),
            Text(
              "\$ 29.99",
              style:
                  GoogleFonts.raleway(fontSize: 14, color: Color(0xffFE2550)),
            ),
            SizedBox(
              height: 20,
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
    );
  }
}
