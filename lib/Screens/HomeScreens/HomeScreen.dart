import 'package:e_commerce/Screens/HomeScreens/Widget/MyContainer.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: ""),
            ]),
        backgroundColor: Color(0xffE5E5E5),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(150),
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text("Discovery",
                  style: GoogleFonts.abrilFatface(
                      color: Colors.black, fontSize: 35)),
              actions: [
                Image.asset('assets/search.png'),
                Image.asset("assets/avatar.png")
              ],
              bottom: TabBar(
                indicatorColor: Color(0xffFE2550),
                labelColor: Colors.black,
                unselectedLabelColor: Color(0xffD6D6D6),
                tabs: [
                  Tab(
                    text: "WOMEN",
                  ),
                  Tab(
                    text: "MEN",
                  ),
                  Tab(text: "CHILDREN")
                ],
              ),
            )),
        body:
            TabBarView(children: [MyContainer(), MyContainer(), MyContainer()]),
      ),
    );
  }
}
