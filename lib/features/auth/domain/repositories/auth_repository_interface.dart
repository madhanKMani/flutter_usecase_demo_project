abstract class AuthRepositoryInterface {
  Future<bool> signup(String mobileNumber, String password);
  Future<bool> verifyOTP(String mobileNumber, String otp);
  Future<String> login(String mobileNumber, String password);
  Future<bool> forgotPassword(String mobileNumber);
}
