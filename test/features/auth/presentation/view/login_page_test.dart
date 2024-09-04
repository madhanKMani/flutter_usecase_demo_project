import 'package:adaptive_demo/features/auth/di/auth_providers.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/forgot_password_usecase.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/login_usecase.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/signup_usecase.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/verify_otp_usecase.dart';
import 'package:adaptive_demo/features/auth/presentation/view/home_page.dart';
import 'package:adaptive_demo/features/auth/presentation/view/login_page.dart';
import 'package:adaptive_demo/features/auth/presentation/viewmodel/auth_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../test_helper/mocks/auth_repository_mocks.mocks.dart';

void main() {
  late MockAuthRepositoryInterface mockAuthRepository;
  late AuthViewModel authViewModel;

  setUp(() {
    mockAuthRepository = MockAuthRepositoryInterface();
    authViewModel = AuthViewModel(
        SignupUseCase(mockAuthRepository),
        VerifyOTPUseCase(mockAuthRepository),
        LoginUseCase(mockAuthRepository),
        ForgotPasswordUseCase(mockAuthRepository));
  });

  testWidgets('LoginPage displays loading indicator during login', (WidgetTester tester) async {
    when(mockAuthRepository.login(any, any)).thenAnswer((_) async {
      await Future.delayed(Duration(seconds: 1));
      return 'token';
    });

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          authViewModelProvider.overrideWith((ref) => authViewModel),
        ],
        child: MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),  // Add the route for /home
          },
        ),
      ),
    );

    // Enter text in the fields
    await tester.enterText(find.byType(TextField).at(0), '1234567890');
    await tester.enterText(find.byType(TextField).at(1), 'password');

    // Tap the login button
    await tester.tap(find.text('Login'));

    // Verify that loading indicator is shown
    await tester.pump(); // Start the login process
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Wait for the login process to complete
    await tester.pumpAndSettle();

    // Verify that loading indicator is gone
    expect(find.byType(CircularProgressIndicator), findsNothing);
  });
}
