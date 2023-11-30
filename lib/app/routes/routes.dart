import 'package:bullet_in/app/app.dart';
import 'package:bullet_in/home/home.dart';
import 'package:bullet_in/onboarding/onboarding.dart';
import 'package:flutter/widgets.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.onboardingRequired:
      return [OnboardingPage.page()];
    case AppStatus.unauthenticated:
    case AppStatus.authenticated:
      return [HomePage.page()];
  }
}
