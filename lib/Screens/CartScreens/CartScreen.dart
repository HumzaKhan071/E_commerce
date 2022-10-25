import 'package:e_commerce/Screens/CartScreens/Model/MyCartContainerModel.dart';
import 'package:e_commerce/Screens/CartScreens/SuccessScreen.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'Widget/MyCartContainer.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 12.0,
          unselectedFontSize: 12.0,
          selectedItemColor: Color(0xffFE2550),
          unselectedItemColor: Color(0xffD6D6D6),
          currentIndex: index,
          onTap: (selectedIndex) {
            setState(() {
              index = selectedIndex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: ""),
          ]),
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Cart",
            style: GoogleFonts.abrilFatface(color: Colors.black, fontSize: 35)),
        actions: [
          Image.asset('assets/search.png'),
          Image.asset("assets/avatar.png")
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Column(
              children: List.generate(
                  myCartContainerModel.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyCartContainer(
                          image: myCartContainerModel[index].image,
                        ),
                      )),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(TextSpan(
                    text: "Total: ",
                    style: GoogleFonts.raleway(
                        color: Color(0xff999999), fontSize: 20),
                    children: [
                      TextSpan(
                          text: "\$ 25.99",
                          style: GoogleFonts.raleway(
                              color: Color(0xffFE2550), fontSize: 20))
                    ])),
                Container(
                  width: 164,
                  height: 52,
                  decoration: BoxDecoration(
                      color: Color(0xffFE2550),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SuccessScreen()));
                      },
                      child: Text(
                        "Pay Now",
                        style: GoogleFonts.raleway(
                            fontSize: 14,
                            letterSpacing: 0.63,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
