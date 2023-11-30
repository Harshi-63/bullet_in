import 'package:bullet_in/app/app.dart';
import 'package:bullet_in/home/home.dart';
import 'package:bullet_in/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('onGenerateAppViewPages', () {
    test('returns [OnboardingPage] when onboardingRequired', () {
      expect(
        onGenerateAppViewPages(AppStatus.onboardingRequired, []),
        [
          isA<MaterialPage<void>>().having(
            (p) => p.child,
            'child',
            isA<OnboardingPage>(),
          ),
        ],
      );
    });

    test('returns [HomePage] when authenticated', () {
      expect(
        onGenerateAppViewPages(AppStatus.authenticated, []),
        [
          isA<MaterialPage<void>>().having(
            (p) => p.child,
            'child',
            isA<HomePage>(),
          ),
        ],
      );
    });

    test('returns [HomePage] when unauthenticated', () {
      expect(
        onGenerateAppViewPages(AppStatus.unauthenticated, []),
        [
          isA<MaterialPage<void>>().having(
            (p) => p.child,
            'child',
            isA<HomePage>(),
          ),
        ],
      );
    });
  });
}
