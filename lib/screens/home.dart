import 'package:flutter/material.dart';
import 'package:my_personal_portfolio/screens/intro/introduction_page.dart';
import 'package:my_personal_portfolio/themes/colors.dart';
import 'package:my_personal_portfolio/widgets/app_bar.dart';

class Home extends StatelessWidget {
   const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const MyAppBar(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const IntroductionPage(),
          Container(color: Colors.amber,height: MediaQuery.sizeOf(context).height,),
          Container(color: backgroundColor,height: MediaQuery.sizeOf(context).height,),
          Container(color: Colors.amber,height: MediaQuery.sizeOf(context).height,),
        ],
      ),
    );
  }
}
