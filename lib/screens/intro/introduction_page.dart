import 'package:flutter/material.dart';
import 'package:my_personal_portfolio/screens/intro/info.dart';
import 'package:my_personal_portfolio/screens/intro/intro_buttons.dart';
import 'package:my_personal_portfolio/screens/intro/logo.dart';
import 'package:my_personal_portfolio/utils/responsive.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.06,vertical: Responsive.isLargeMobile(context) ? 24 : MediaQuery.sizeOf(context).height *0.2),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(Responsive.isLargeMobile(context)) const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Logo(),
                ),
                const Info(),
                const SizedBox(
                  height: 40,
                ),
                const FittedBox(
                  child: IntroButtons(),
                )
              ],
            ),
          ),
          if(!Responsive.isLargeMobile(context))const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: Logo(),
              ))
        ],
      )
    );
  }
}


