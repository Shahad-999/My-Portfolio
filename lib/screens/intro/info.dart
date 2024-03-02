import 'package:flutter/cupertino.dart';
import 'package:my_personal_portfolio/themes/colors.dart';
import 'package:my_personal_portfolio/themes/texts_styles.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hi, I’m Shahad H.',
          style: largeTextStyle,
        ),
        Text(
          'Mobile Developer',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              height: 1.5,
              color: color900),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'I am a highly motivated Mobile developer, constantly seeking new skills and knowledge.',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.normal,
              height: 1.5,
              color: shade100),
        ),
      ],
    );
  }
}
