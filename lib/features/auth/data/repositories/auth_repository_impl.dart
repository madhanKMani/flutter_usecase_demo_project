

import 'package:adaptive_demo/features/auth/data/sources/remote/auth_remote_data_source.dart';
import 'package:adaptive_demo/features/auth/domain/repositories/auth_repository_interface.dart';

class AuthRepositoryImpl implements AuthRepositoryInterface {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<bool> signup(String mobileNumber, String password) {
    return remoteDataSource.signup(mobileNumber, password);
  }

  @override
  Future<bool> verifyOTP(String mobileNumber, String otp) {
    return remoteDataSource.verifyOTP(mobileNumber, otp);
  }

  @override
  Future<String> login(String mobileNumber, String password) {
    return remoteDataSource.login(mobileNumber, password);
  }

  @override
  Future<bool> forgotPassword(String mobileNumber) {
    return remoteDataSource.forgotPassword(mobileNumber);
  }
}
