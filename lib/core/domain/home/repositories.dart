import 'package:dispatchapp/core/domain/home/index.dart';

abstract class HomeRepo {
  Future getUser({required int id});
  Future updateUserProfile({required Profile? profile});
}
