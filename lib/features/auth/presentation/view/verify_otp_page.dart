import 'package:adaptive_demo/features/auth/di/auth_providers.dart';
import 'package:adaptive_demo/features/auth/presentation/intent/auth_intent.dart';
import 'package:adaptive_demo/features/auth/presentation/state/auth_state.dart';
import 'package:adaptive_demo/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VerifyOtpPage extends ConsumerWidget {
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authViewModelProvider);

    ref.listen<AuthState>(authViewModelProvider, (previous, next) {
      next.when(
        initial: () {},
        loading: () {},
        success: () {
          Navigator.pushReplacementNamed(context, AppRoutes.home);
        },
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
        },
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Verify OTP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _mobileNumberController,
              decoration: InputDecoration(labelText: 'Mobile Number'),
            ),
            TextField(
              controller: _otpController,
              decoration: InputDecoration(labelText: 'OTP'),
            ),
            const SizedBox(height: 20),
            authState.maybeWhen(
              loading: () => CircularProgressIndicator(),
              orElse: () => ElevatedButton(
                onPressed: () {
                  final mobileNumber = _mobileNumberController.text;
                  final otp = _otpController.text;
                  ref.read(authViewModelProvider.notifier)
                      .handleIntent(AuthIntent.verifyOTP(mobileNumber, otp));
                },
                child: Text('Verify OTP'),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
