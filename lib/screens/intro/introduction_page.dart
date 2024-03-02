import 'package:flutter/material.dart';
import 'package:my_personal_portfolio/screens/intro/buttons.dart';
import 'package:my_personal_portfolio/screens/page.dart';
import 'package:my_personal_portfolio/themes/colors.dart';
import 'package:my_personal_portfolio/themes/texts_styles.dart';
import 'package:my_personal_portfolio/widgets/app_bar.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key, required this.onPressDown});

  final VoidCallback onPressDown;

  @override
  Widget build(BuildContext context) {
    return PageViewp(
      onPressDown: onPressDown,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.06),
        child: Scaffold(
          appBar: const MyAppBar(),
          body: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Hi, I’m Shahad H.',
                      style: largeTextStyle,
                    ),
                    const Text(
                      'Mobile Developer',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                          color: color900),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'I am a highly motivated Mobile developer, constantly seeking new skills and knowledge.',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          height: 1.5,
                          color: shade100),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    FittedBox(
                      child: Wrap(
                        children: [
                          AppFilledButton(
                            onPress: () {},
                            padding: const EdgeInsets.all(10),
                            child: Image.asset('assets/images/github.png',width: 24,height: 24,),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          AppFilledButton(
                            padding: const EdgeInsets.all(10),
                            onPress: () {},
                            child: Image.asset('assets/images/linkedin.png',width: 24,height: 24,),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          AppOutlineButton(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            onPress: () {},
                            child: const Text(
                              'GET IN TOUCH',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  height: 1.7,
                                  color: shade100),
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          AppOutlineButton(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10),
                            onPress: () {},
                            child: const Text(
                              'RESUME',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  height: 1.7,
                                  color: shade100),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Stack(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).width * 0.2,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF6478C0), Color(0xFF2C46A5)])),
                  ),
                  Positioned(
                      top: 0,
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Image.asset('assets/images/logo.png')),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
