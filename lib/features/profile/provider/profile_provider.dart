import 'package:dispatchapp/core/domain/home/index.dart';
import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier implements HomeRepo {
  ProfileResponseModel? _profileResp;
   Profile? _profile;


  bool _loading = false;

  bool get loading => _loading;
  Profile? get profile => _profile;
  ProfileResponseModel? get profileResp => _profileResp;

  @override
  Future getUser({required int id}) async {
    print("DDATA FROMMM PROVIDER");
    _loading = true;
    notifyListeners();
    final response = await HomeApi.getUserProfile(id: id);
    _profileResp = response;
    _profile = _profileResp?.profile;
    print("PROFILE RESPONSE FROM PROVIDER $profileResp");
    _loading = false;
    notifyListeners();
  }

  @override
  Future updateUserProfile({required Profile? profile}) async {
    final response = await HomeApi.updateUserProfile(profile: profile);
    _profile = profile;
    notifyListeners();
  }
}
