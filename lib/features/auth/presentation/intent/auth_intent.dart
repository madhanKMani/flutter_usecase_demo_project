import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_intent.freezed.dart';

@freezed
class AuthIntent with _$AuthIntent {
  const factory AuthIntent.signup(String mobileNumber, String password) = _Signup;
  const factory AuthIntent.verifyOTP(String mobileNumber, String otp) = _VerifyOTP;
  const factory AuthIntent.login(String mobileNumber, String password) = _Login;
  const factory AuthIntent.forgotPassword(String mobileNumber) = _ForgotPassword;
  const factory AuthIntent.logout() = _Logout;
}
