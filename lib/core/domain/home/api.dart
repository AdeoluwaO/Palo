import 'package:dispatchapp/core/domain/home/index.dart';
import 'package:dispatchapp/core/network/api.dart';
import 'package:dispatchapp/core/network/api_endpoint.dart';

class HomeApi {
  static getUserProfile({required int id}) async {
    try {
      print("getUserProfile PARAMS FROM DOMAIN $id");
      final response = await sendRequest(
          method: 'GET', endpoint: ApiEndpoints.getUser(id: id));
      final modeledResponse =
          ProfileResponseModel.fromJson(response as Map<String, dynamic>);
      print("getUserProfile RESPONSE FROM DOMAIN ${modeledResponse.toJson()}");
      return modeledResponse;
    } catch (e) {
      print("ERROR IS $e");
    }
  }

  static updateUserProfile({required Profile? profile}) async {
    try {
      print("updateUserProfile PARAMS FROM DOMAIN $profile");
      final response = await sendRequest(
          method: 'GET', endpoint: ApiEndpoints.getUser(id: profile?.id ?? 1));
      final modeledResponse =
          ProfileResponseModel.fromJson(response as Map<String, dynamic>);
      print(
          "updateUserProfile RESPONSE FROM DOMAIN ${modeledResponse.toJson()}");
      return modeledResponse;
    } catch (e) {
      print("ERROR IS $e");
    }
  }
}
