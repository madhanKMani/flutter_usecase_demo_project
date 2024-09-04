import 'package:adaptive_demo/features/auth/domain/repositories/auth_repository_interface.dart';

class LoginUseCase {
  final AuthRepositoryInterface repository;

  LoginUseCase(this.repository);

  Future<String> execute(String mobileNumber, String password) {
    return repository.login(mobileNumber, password);
  }
}
