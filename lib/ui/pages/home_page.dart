import 'package:flutter/material.dart';
import 'package:onboarding_app/ui/pages/onboarding_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onBackToIntro(context){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const OnboardingPage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home Page')
      ),
    );
  }
}
