import 'package:dispatchapp/core/domain/authentication/index.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier implements AuthRepo {
  LoginResponseModel? _loginResp;
  SignupResponseModel? _signupResp;

  bool _loading = false;

  bool get loading => _loading;
  LoginResponseModel? get loginReso => _loginResp;
  SignupResponseModel? get signupResp => _signupResp;

  @override
  Future createAccount({required AuthParams signupData}) async {
    print("DDATA FROMMM PROVIDER");
    _loading = true;
    notifyListeners();
    final response =
        await AuthenticationApi.createAccount(signupData: signupData);
    _signupResp = response;
    _loading = false;
    notifyListeners();
  }

  @override
  Future login({required AuthParams loginData}) async {
    _loading = true;
    notifyListeners();
    final response = await AuthenticationApi.login(loginData: loginData);
    _loginResp = response;
    _loading = false;
    notifyListeners();
  }
}
