import 'package:adaptive_demo/features/auth/di/auth_providers.dart';
import 'package:adaptive_demo/features/auth/presentation/intent/auth_intent.dart';
import 'package:adaptive_demo/features/auth/presentation/state/auth_state.dart';
import 'package:adaptive_demo/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authViewModelProvider, (previous, next) {
      next.maybeWhen(
        success: () {
          Navigator.pushReplacementNamed(context, AppRoutes.login);
        },
        orElse: () {},
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              ref
                  .read(authViewModelProvider.notifier)
                  .handleIntent(AuthIntent.logout());
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}
