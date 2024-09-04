import 'package:adaptive_demo/features/auth/di/auth_providers.dart';
import 'package:adaptive_demo/features/auth/presentation/intent/auth_intent.dart';
import 'package:adaptive_demo/features/auth/presentation/state/auth_state.dart';
import 'package:adaptive_demo/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignupPage extends ConsumerWidget {
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authViewModelProvider);

    ref.listen<AuthState>(authViewModelProvider, (previous, next) {
      next.when(
        initial: () {},
        loading: () {},
        success: () {
          Navigator.pushReplacementNamed(context, AppRoutes.login);
        },
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
        },
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Page'),
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
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            authState.maybeWhen(
              loading: () => CircularProgressIndicator(),
              orElse: () => ElevatedButton(
                onPressed: () {
                  final mobileNumber = _mobileNumberController.text;
                  final password = _passwordController.text;
                  ref.read(authViewModelProvider.notifier)
                      .handleIntent(AuthIntent.signup(mobileNumber, password));
                },
                child: Text('Signup'),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.login);
              },
              child: Text('Go to Login Page'),
            ),
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
