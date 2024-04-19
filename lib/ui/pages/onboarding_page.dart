import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_app/ui/pages/home_page.dart';
import 'package:onboarding_app/ui/pages/introduction_pages.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 10000,
      infiniteAutoScroll: true,
      pages: provideIntroductionScreenPages(),
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context),
      showSkipButton: true,
      back: const Icon(Icons.arrow_back),
      skip: Text(
        'Skip',
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      next: const Icon(Icons.arrow_forward),
      done: Text(
        'Done',
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      dotsDecorator: const DotsDecorator(
        size: Size(10, 10),
        color: Color(0xFF287B76),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
      // dotsContainerDecorator: const ShapeDecoration(
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.all(
      //         Radius.circular(8),
      //       ),
      //     ),
      //     color: Colors.transparent),
    );
  }
}
