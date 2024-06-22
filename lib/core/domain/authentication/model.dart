class SignupResponseModel {
  const SignupResponseModel({ required this.id, required this.token});
  final int? id;
  final String? token;

factory SignupResponseModel.fromJson(Map<String, dynamic> json) => SignupResponseModel(
        id: json['id'],
        token: json['token'],
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'token': token
    };
  }
}

class AuthParams {
  const AuthParams({required this.email, required this.password});

  final String? email, password;

factory AuthParams.fromJson(Map<String, dynamic> json) => AuthParams(
        email: json['email'],
        password: json['password'],
      );

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password
    };
  }
}


class LoginResponseModel {
 const LoginResponseModel({ required this.token});
  final String? token;

factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
        token: json['token'],
      );

  Map<String, dynamic> toJson() {
    return {
      'token': token
    };
  }
}