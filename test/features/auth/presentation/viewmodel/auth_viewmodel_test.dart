import 'package:adaptive_demo/features/auth/domain/repositories/auth_repository_interface.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/forgot_password_usecase.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/login_usecase.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/signup_usecase.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/verify_otp_usecase.dart';
import 'package:adaptive_demo/features/auth/presentation/intent/auth_intent.dart';
import 'package:adaptive_demo/features/auth/presentation/state/auth_state.dart';
import 'package:adaptive_demo/features/auth/presentation/viewmodel/auth_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../test_helper/mocks/auth_repository_mocks.mocks.dart';

void main() {
  late AuthViewModel authViewModel;
  late MockAuthRepositoryInterface mockAuthRepository;
  late LoginUseCase loginUseCase;
  late SignupUseCase signupUseCase;
  late VerifyOTPUseCase verifyOTPUseCase;
  late ForgotPasswordUseCase forgotPasswordUseCase;



  setUp(() {
    mockAuthRepository = MockAuthRepositoryInterface();
    loginUseCase = LoginUseCase(mockAuthRepository);
    signupUseCase = SignupUseCase(mockAuthRepository);
    verifyOTPUseCase = VerifyOTPUseCase(mockAuthRepository);
    forgotPasswordUseCase = ForgotPasswordUseCase(mockAuthRepository);
    authViewModel = AuthViewModel(signupUseCase,verifyOTPUseCase,loginUseCase,forgotPasswordUseCase);
  });

  test('initial state is AuthState.initial', () {
    expect(authViewModel.state, const AuthState.initial());
  });

  test('login success emits AuthState.success', () async {
    when(mockAuthRepository.login(any, any)).thenAnswer((_) async => "token");

    authViewModel.handleIntent(const AuthIntent.login('1234567890', 'password'));

    expectLater(authViewModel.stream, emits(const AuthState.loading()));
    expectLater(authViewModel.stream, emits(const AuthState.success()));
  });

  test('login failure emits AuthState.error', () async {
    when(mockAuthRepository.login(any, any)).thenAnswer((_) async => "token");

    authViewModel.handleIntent(const AuthIntent.login('1234567890', 'password'));

    expectLater(authViewModel.stream, emits(const AuthState.loading()));
    expectLater(authViewModel.stream, emits(const AuthState.error('Login failed')));
  });

  // Similar tests can be written for signup, verifyOTP, and forgotPassword.
}
