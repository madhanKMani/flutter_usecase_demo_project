import 'package:adaptive_demo/features/auth/domain/repositories/auth_repository_interface.dart';

class VerifyOTPUseCase {
  final AuthRepositoryInterface repository;

  VerifyOTPUseCase(this.repository);

  Future<bool> execute(String mobileNumber, String otp) {
    return repository.verifyOTP(mobileNumber, otp);
  }
}
