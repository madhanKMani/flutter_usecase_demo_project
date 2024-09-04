import 'package:adaptive_demo/features/auth/domain/repositories/auth_repository_interface.dart';

class ForgotPasswordUseCase {
  final AuthRepositoryInterface repository;

  ForgotPasswordUseCase(this.repository);

  Future<bool> execute(String mobileNumber) {
    return repository.forgotPassword(mobileNumber);
  }
}
