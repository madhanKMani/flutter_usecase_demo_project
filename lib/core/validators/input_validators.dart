class InputValidator {
  static String? validateEmail(String email) {
    if (email.isEmpty) {
      return 'Email cannot be empty';
    }
    final emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!emailRegex.hasMatch(email)) {
      return 'Enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'Password cannot be empty';
    }
    if (password.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  static String? validatePhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      return 'Phone number cannot be empty';
    }
    final phoneRegex = RegExp(r'^[0-9]{10}$');
    if (!phoneRegex.hasMatch(phoneNumber)) {
      return 'Enter a valid phone number';
    }
    return null;
  }

  static String? validateOtp(String otp) {
    if (otp.isEmpty) {
      return 'OTP cannot be empty';
    }
    if (otp.length != 6) {
      return 'OTP must be 6 digits';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(otp)) {
      return 'OTP must contain only digits';
    }
    return null;
  }
}
