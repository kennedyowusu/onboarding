import 'package:flutter/material.dart';
import 'package:mail_box/constant/colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.activeIndex = false,
  });

  final bool activeIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      height: activeIndex ? 10 : 5,
      width: activeIndex ? 10 : 5,
      decoration: BoxDecoration(
        color: activeIndex ? primary : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
