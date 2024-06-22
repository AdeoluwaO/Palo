import 'package:dispatchapp/core/domain/authentication/index.dart';
import 'package:dispatchapp/core/network/api.dart';
import 'package:dispatchapp/core/network/api_endpoint.dart';

class AuthenticationApi {
  static createAccount({required AuthParams signupData}) async {
    try {
      print("SIGNUUP PARAMS FROM DOMAIN $signupData");
      final response = await sendRequest(
          method: 'POST',
          endpoint: ApiEndpoints.signup,
          data: signupData.toJson());
      final modeledResponse =
          SignupResponseModel.fromJson(response as Map<String, dynamic>);
      print("SIGNUUP RESPONSE FROM DOMAIN ${modeledResponse.toJson()}");
      return modeledResponse;
    } catch (e) {
      print("ERROR IS $e");
    }
  }

  static login({required AuthParams loginData}) async {
    try {
      print("LOGIN PARAMS FROM DOMAIN $loginData");
      final response = await sendRequest(
        method: 'POST',
        endpoint: ApiEndpoints.login,
        data: loginData.toJson(),
      );
      final modeledResponse =
          LoginResponseModel.fromJson(response as Map<String, dynamic>);
      print("LOGIN RESPONSE FROM DOMAIN $modeledResponse");
      return modeledResponse;
    } catch (e) {
      print("ERROR IS $e");
    }
  }
}
