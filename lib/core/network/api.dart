///
import 'package:dio/dio.dart';
import 'package:dispatchapp/core/network/api_endpoint.dart';
import 'package:dispatchapp/shared/widgets/toast.dart';
//import 'package:project_structure/src/general_widgets/toast.dart';


Future<T?> sendRequest<T>({
  required String method,
  required String endpoint,
  Map<String, dynamic>? data,
  Map<String, dynamic>? queryParams,
  Options? options,
  bool requiresAuth = true,
}) async {
  final methodToUppercase = method.toUpperCase();
  try {
    // print('STARING');

    final baseApiSetup = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));
    /*RUN A CHECK IF TOKEN IS NOT EMPTY 
    MEANING THE USER WOULD HAVE PROBABLY AUTHENTICATED
    if(token.isNotEmpty) headers: {"Authorization": "Bearer $testToken""}: null;
    */
    final response = await baseApiSetup.request(
      endpoint,
      queryParameters: queryParams,
      options: options ??
          Options(
            method: methodToUppercase,
          ),
      data: data ?? {},
    );
    // print('TEST RESPONSE ${t.data}');
    return response.data as T;
  } on DioException catch (e) {
    // showToast(message: e.toString(), isError: true);
    showToast(message: 'An error occured check internet connection', isError: true);
    // print('API ERROR IS THIS $e');
    print('API ERROR IS THIS $e');
    return e as T;
  }
}