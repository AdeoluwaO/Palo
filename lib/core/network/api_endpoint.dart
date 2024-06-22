class ApiEndpoints {
  static const login = '/login';
  static const signup = '/register';
  static  updateUser({required String id}) => '/users/$id';
  static  getUser({required int id}) => '/users/$id';
}

