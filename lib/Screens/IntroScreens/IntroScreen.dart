import 'package:flutter/material.dart';

import 'package:page_indicator/page_indicator.dart';


import 'Widget/OutroPage.dart';
import 'Widget/Pages.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    List<Widget> list = <Widget>[
      Pages(
          image: "assets/Intro1.png",
          number: "1",
          title: "Jennifer Kingsley ",
          description: "exploring the new range of winter fashion wear"),
      Pages(
        image: "assets/Intro2.png",
        number: "2",
        title: "Jimmy Chuka ",
        description: "exploring new spring sweater collection",
      ),
      Pages(
        image: "assets/Intro3.png",
        number: "3",
        title: "Christain Lobi ",
        description: "showing us his new summer beach wears",
      ),
      OutroPage()
    ];
    int curr = 0;
    return Scaffold(
        body: PageIndicatorContainer(
      length: list.length,
      align: IndicatorAlign.bottom,
      indicatorSelectorColor: Color(0xffFE2550),
      child: PageView(
          scrollDirection: Axis.horizontal,

          // reverse: true,
          physics: BouncingScrollPhysics(),
          controller: controller,
          onPageChanged: (num) {
            setState(() {
              curr = num;
            });
          },
          children: list),
    ));
  }
}
