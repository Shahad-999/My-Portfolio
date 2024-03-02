import 'package:flutter/material.dart';
import 'package:my_personal_portfolio/screens/intro/introduction_page.dart';
import 'package:my_personal_portfolio/screens/page.dart';
import 'package:my_personal_portfolio/widgets/app_bar.dart';

class Home extends StatelessWidget {
   Home({super.key});

  final colors = [Colors.red, Colors.amber, Colors.brown, Colors.deepPurple];
  final controller = PageController();

  nextPage(){
    controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOutCubic);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: [
          IntroductionPage(onPressDown: nextPage),
          PageViewp(child: Container(color: Colors.amber,), onPressDown: nextPage),
        ],
      ),
    );
  }
}
