import 'package:flutter/material.dart';

class PageViewp extends StatelessWidget {
  const PageViewp({super.key, required this.child, required this.onPressDown});
  final Widget child;
  final VoidCallback onPressDown;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          right: 0,left: 0,
          bottom: 24,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: InkWell(
              onTap: (){
                onPressDown();
              },
              child: Icon(Icons.arrow_downward_rounded,color: Colors.white,),
            ),
          ),
        )
      ],
    );
  }
}
