import 'package:flutter/material.dart';
import 'package:my_personal_portfolio/themes/colors.dart';

class AppFilledButton extends StatelessWidget {
  final VoidCallback onPress;
  final Widget? child;
  final EdgeInsets? padding;

  const AppFilledButton({
    super.key,
    required this.onPress,
    this.child, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Ink(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: color200,
        ),
        child: child,
      ),
    );
  }
}

class AppOutlineButton extends StatelessWidget {
  final VoidCallback onPress;
  final Widget? child;
  final EdgeInsets? padding;

  const AppOutlineButton({
    super.key,
    required this.onPress,
    this.child, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Ink(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: shade500),
          // color: color200,
        ),
        child: child,
      ),
    );
  }
}
