import 'package:mail_box/constant/images.dart';

class Onboarding {
  final String title;
  final String description;
  final String image;

  Onboarding(
      {required this.title, required this.description, required this.image});
}

final List<Onboarding> onboarding = [
  Onboarding(
    title: "Welcome to MailBox",
    description:
        "MailBox is a messaging app \nwith a focus on speed and security.",
    image: email1,
  ),
  Onboarding(
    title: "Encrypted and Secure",
    description: "All your messages are encrypted \nand 100% secure",
    image: email2,
  ),
  Onboarding(
    title: "Quick Delivery",
    description: "We deliver your messages in \nless than 10 seconds",
    image: email3,
  ),
];
