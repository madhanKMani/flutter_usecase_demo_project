
import 'package:adaptive_demo/features/auth/domain/repositories/auth_repository_interface.dart';

class SignupUseCase {
  final AuthRepositoryInterface repository;

  SignupUseCase(this.repository);

  Future<bool> execute(String mobileNumber, String password) {
    return repository.signup(mobileNumber, password);
  }
}
