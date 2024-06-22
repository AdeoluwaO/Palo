import 'package:dispatchapp/core/domain/authentication/index.dart';

abstract class AuthRepo {
  Future createAccount({required AuthParams signupData});
  Future login({required AuthParams loginData});
}
