import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
