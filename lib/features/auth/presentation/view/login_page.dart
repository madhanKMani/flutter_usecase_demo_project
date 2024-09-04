import 'package:adaptive_demo/features/auth/di/auth_providers.dart';
import 'package:adaptive_demo/features/auth/presentation/intent/auth_intent.dart';
import 'package:adaptive_demo/features/auth/presentation/state/auth_state.dart';
import 'package:adaptive_demo/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
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
          Navigator.pushReplacementNamed(context, AppRoutes.home);
        },
        error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
        },
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
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
                      .handleIntent(AuthIntent.login(mobileNumber, password));
                },
                child: Text('Login'),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.signup);
              },
              child: Text('Go to Signup Page'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.forgotPassword);
              },
              child: Text('Forgot Password'),
            ),
          ],
        ),
      ),
    );
  }
}
