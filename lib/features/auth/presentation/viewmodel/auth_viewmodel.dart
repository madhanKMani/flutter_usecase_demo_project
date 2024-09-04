import 'package:adaptive_demo/core/utils/graphql_service.dart';
import 'package:adaptive_demo/core/validators/input_validators.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/forgot_password_usecase.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/login_usecase.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/signup_usecase.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/verify_otp_usecase.dart';
import 'package:adaptive_demo/features/auth/presentation/intent/auth_intent.dart';
import 'package:adaptive_demo/features/auth/presentation/state/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthViewModel extends StateNotifier<AuthState> {
  final SignupUseCase signupUseCase;
  final VerifyOTPUseCase verifyOTPUseCase;
  final LoginUseCase loginUseCase;
  final ForgotPasswordUseCase forgotPasswordUseCase;

  AuthViewModel(this.signupUseCase, this.verifyOTPUseCase, this.loginUseCase,
      this.forgotPasswordUseCase)
      : super(const AuthState.initial());

  void handleIntent(AuthIntent intent) {
    intent.when(
      signup: (mobileNumber, password) async {
        final phoneError = InputValidator.validatePhoneNumber(mobileNumber);
        final passwordError = InputValidator.validatePassword(password);

        if (phoneError != null) {
          state = AuthState.error(phoneError);
          return;
        }
        if (passwordError != null) {
          state = AuthState.error(passwordError);
          return;
        }

        state = const AuthState.loading();
        try {
          final success = await handleApiCall(
              () => signupUseCase.execute(mobileNumber, password));
          state = success
              ? const AuthState.success()
              : const AuthState.error('Signup failed');
        } catch (e) {
          state = AuthState.error(e.toString());
        }
      },
      verifyOTP: (mobileNumber, otp) async {
        final phoneError = InputValidator.validatePhoneNumber(mobileNumber);
        final passwordError = InputValidator.validateOtp(otp);

        if (phoneError != null) {
          state = AuthState.error(phoneError);
          return;
        }
        if (passwordError != null) {
          state = AuthState.error(passwordError);
          return;
        }


        state = const AuthState.loading();
        try {
          final success = await handleApiCall(
              () => verifyOTPUseCase.execute(mobileNumber, otp));
          state = success
              ? const AuthState.success()
              : const AuthState.error('OTP verification failed');
        } catch (e) {
          state = AuthState.error(e.toString());
        }
      },
      login: (mobileNumber, password) async {
        final phoneError = InputValidator.validatePhoneNumber(mobileNumber);
        final passwordError = InputValidator.validatePassword(password);

        if (phoneError != null) {
          state = AuthState.error(phoneError);
          return;
        }
        if (passwordError != null) {
          state = AuthState.error(passwordError);
          return;
        }


        state = const AuthState.loading();
        try {
          final token = await handleApiCall(
              () => loginUseCase.execute(mobileNumber, password));
          state = AuthState.success();
          // Handle token storage or navigation to the main app here
        } catch (e) {
          state = AuthState.error(e.toString());
        }
      },
      forgotPassword: (mobileNumber) async {
        final phoneError = InputValidator.validatePhoneNumber(mobileNumber);

        if (phoneError != null) {
          state = AuthState.error(phoneError);
          return;
        }


        state = const AuthState.loading();
        try {
          final success = await handleApiCall(
              () => forgotPasswordUseCase.execute(mobileNumber));
          state = success
              ? const AuthState.success()
              : const AuthState.error('Forgot password failed');
        } catch (e) {
          state = AuthState.error(e.toString());
        }
      },
      logout: () {
        state = const AuthState
            .initial(); // Clear the state, or handle logout logic like token removal
      },
    );
  }
}
