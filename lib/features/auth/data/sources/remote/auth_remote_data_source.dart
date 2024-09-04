import 'package:graphql_flutter/graphql_flutter.dart';

class AuthRemoteDataSource {
  final GraphQLClient client;

  AuthRemoteDataSource(this.client);

  Future<bool> signup(String mobileNumber, String password) async {
    final result = await client.mutate(MutationOptions(
      document: gql(r'''
        mutation Signup($mobileNumber: String!, $password: String!) {
          signup(mobileNumber: $mobileNumber, password: $password) {
            success
          }
        }
      '''),
      variables: {'mobileNumber': mobileNumber, 'password': password},
    ));

    if (result.hasException) {
      throw Exception('Signup failed');
    }

    return result.data?['signup']['success'];
  }

  Future<bool> verifyOTP(String mobileNumber, String otp) async {
    final result = await client.mutate(MutationOptions(
      document: gql(r'''
        mutation VerifyOTP($mobileNumber: String!, $otp: String!) {
          verifyOTP(mobileNumber: $mobileNumber, otp: $otp) {
            success
          }
        }
      '''),
      variables: {'mobileNumber': mobileNumber, 'otp': otp},
    ));

    if (result.hasException) {
      throw Exception('OTP Verification failed');
    }

    return result.data?['verifyOTP']['success'];
  }

  Future<String> login(String mobileNumber, String password) async {
    final result = await client.mutate(MutationOptions(
      document: gql(r'''
        mutation Login($mobileNumber: String!, $password: String!) {
          login(mobileNumber: $mobileNumber, password: $password) {
            token
          }
        }
      '''),
      variables: {'mobileNumber': mobileNumber, 'password': password},
    ));

    if (result.hasException) {
      throw Exception('Login failed');
    }

    return result.data?['login']['token'];
  }

  Future<bool> forgotPassword(String mobileNumber) async {
    final result = await client.mutate(MutationOptions(
      document: gql(r'''
        mutation ForgotPassword($mobileNumber: String!) {
          forgotPassword(mobileNumber: $mobileNumber) {
            success
          }
        }
      '''),
      variables: {'mobileNumber': mobileNumber},
    ));

    if (result.hasException) {
      throw Exception('Forgot password request failed');
    }

    return result.data?['forgotPassword']['success'];
  }
}
