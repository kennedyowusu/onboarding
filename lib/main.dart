import 'package:flutter/material.dart';
import 'package:mail_box/views/onboarding/onboarding.dart';

void main() {
  runApp(const MailBox());
}

class MailBox extends StatelessWidget {
  const MailBox({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mail Box',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingView(),
    );
  }
}
