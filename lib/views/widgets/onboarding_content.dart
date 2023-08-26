import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.image,
    required this.description,
  });

  final double height;
  final double width;
  final String title, image, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          image,
          height: height * 0.5,
          width: width,
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
        ),
        Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
