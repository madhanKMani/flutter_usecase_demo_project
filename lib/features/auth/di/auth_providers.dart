import 'package:adaptive_demo/core/di/app_providers.dart';
import 'package:adaptive_demo/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:adaptive_demo/features/auth/data/sources/remote/auth_remote_data_source.dart';
import 'package:adaptive_demo/features/auth/domain/repositories/auth_repository_interface.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/forgot_password_usecase.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/login_usecase.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/signup_usecase.dart';
import 'package:adaptive_demo/features/auth/domain/use_cases/verify_otp_usecase.dart';
import 'package:adaptive_demo/features/auth/presentation/state/auth_state.dart';
import 'package:adaptive_demo/features/auth/presentation/viewmodel/auth_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final authRemoteDataSourceProvider = Provider((ref) {
  return AuthRemoteDataSource(ref.watch(graphQLClientProvider));
});

final authRepositoryProvider = Provider<AuthRepositoryInterface>((ref) {
  return AuthRepositoryImpl(ref.watch(authRemoteDataSourceProvider));
});

final signupUseCaseProvider = Provider((ref) {
  return SignupUseCase(ref.watch(authRepositoryProvider));
});

final verifyOTPUseCaseProvider = Provider((ref) {
  return VerifyOTPUseCase(ref.watch(authRepositoryProvider));
});

final loginUseCaseProvider = Provider((ref) {
  return LoginUseCase(ref.watch(authRepositoryProvider));
});

final forgotPasswordUseCaseProvider = Provider((ref) {
  return ForgotPasswordUseCase(ref.watch(authRepositoryProvider));
});

final authViewModelProvider = StateNotifierProvider<AuthViewModel, AuthState>((ref) {
  return AuthViewModel(
    ref.watch(signupUseCaseProvider),
    ref.watch(verifyOTPUseCaseProvider),
    ref.watch(loginUseCaseProvider),
    ref.watch(forgotPasswordUseCaseProvider),
  );
});
