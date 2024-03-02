import 'package:flutter/material.dart';
import 'package:my_personal_portfolio/widgets/buttons.dart';
import 'package:my_personal_portfolio/themes/colors.dart';

class IntroButtons extends StatelessWidget {
  const IntroButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
    );
  }
}
