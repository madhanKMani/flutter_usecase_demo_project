import 'package:adaptive_demo/features/auth/di/auth_providers.dart';
import 'package:adaptive_demo/features/auth/presentation/intent/auth_intent.dart';
import 'package:adaptive_demo/features/auth/presentation/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ForgotPasswordPage extends ConsumerWidget {
  final TextEditingController _mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authViewModelProvider);

    ref.listen<AuthState>(authViewModelProvider, (previous, next) {
      next.when(
        initial: () {},
        loading: () {},
        success: () {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Password reset link sent to your mobile number')));
          Navigator.pop(context);
        },
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
        },
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
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
            const SizedBox(height: 20),
            authState.maybeWhen(
              loading: () => CircularProgressIndicator(),
              orElse: () => ElevatedButton(
                onPressed: () {
                  final mobileNumber = _mobileNumberController.text;
                  ref.read(authViewModelProvider.notifier)
                      .handleIntent(AuthIntent.forgotPassword(mobileNumber));
                },
                child: Text('Reset Password'),
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
