import 'package:flutter/material.dart';
import 'package:mail_box/model/onboarding.dart';
import 'package:mail_box/views/home/home.dart';
import 'package:mail_box/views/onboarding/dot_indicator.dart';
import 'package:mail_box/views/widgets/onboarding_content.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: onboarding.length,
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnboardingContent(
                    height: height,
                    width: width,
                    title: onboarding[index].title,
                    image: onboarding[index].image,
                    description: onboarding[index].description,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    onboarding.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: DotIndicator(
                        activeIndex: pageIndex == index ? true : false,
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: height * 0.1,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        if (pageController.page?.round() == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeView(),
                            ),
                          );
                        } else {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: CircleBorder(),
                      ),
                      child: Text(
                        pageIndex == 2 ? "Skip" : "Next",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
