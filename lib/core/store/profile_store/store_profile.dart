import 'dart:convert';

import 'package:dispatchapp/core/domain/home/index.dart';
import 'package:dispatchapp/core/store/local_storage.dart';
import 'package:dispatchapp/core/store/store_keys.dart';

class ProfileStore {
  static storeUserId({required int? id}) async {
    try {
      print("storeId PARAMS FROM STORE $id");
      await LocalStorage().storeInt(
        key: StoreKeys.userId,
        val: id,
      );
    } catch (e) {
      print("ERROR IS $e");
    }
  }

  static Future<bool> isLoggedIn() async{
    bool isLoggedIn = false;
    try {
      print("GETTING LOGIN STATUS");
      final id = await getStoredUserId();
      print('USER ID IS FROM IS LOGGEDD IN $id');
      if (id != null) {
        isLoggedIn = true;
      print('USER ID IF $id');
      }
    } catch (e) {
      print("ERROR IS $e");

      isLoggedIn = false;
    }
    print("IS LOGGED IN ? $isLoggedIn");
    return isLoggedIn;
  }

  static getStoredUserId() async {
    try {
      print("GETTING STORED ID");
      final storedId = await LocalStorage().getStoredInt(key: StoreKeys.userId);
      print("STORED USER $storedId");
      return storedId;
    } catch (e) {
      print("ERROR IS $e");
    }
  }

  static storeUser({required Profile? profile}) async {
    try {
      print("storeUser PARAMS FROM STORE $profile");
      final stringyfiedUser = jsonEncode(profile?.toJson());
      print("stringyfiedUser USER $stringyfiedUser");
      await LocalStorage().storeString(
        key: StoreKeys.user,
        val: stringyfiedUser,
      );
    } catch (e) {
      print("ERROR IS $e");
    }
  }

  static getStoredsUser() async {
    try {
      print("GETTING STORED USER");
      final storedUser =
          await LocalStorage().getStoredString(key: StoreKeys.user);
      print("STORED USER $storedUser");
      final decodedStoredUser = jsonDecode(storedUser);
      print(" decodedStoredUser STORED USER $storedUser");
      final modelledStoredUser = Profile.fromJson(decodedStoredUser);
      print(" modelledStoredUser STORED USER $modelledStoredUser");
      return modelledStoredUser;
    } catch (e) {
      print("ERROR IS $e");
    }
  }

  static updateUserProfile({required Profile? profile}) async {
    try {
      print("updateUserProfile PARAMS FROM STORE ${profile?.toJson()}");
      final previouslyStoredProfile =
          await LocalStorage().getStoredString(key: StoreKeys.user);
      print("previouslyStoredProfile USER $previouslyStoredProfile");
      final Map<String, dynamic> decoded = jsonDecode(previouslyStoredProfile);
      print("decoded previouslyStoredProfile USER $previouslyStoredProfile");
      final updatedProfile = {...decoded, ...?profile?.toJson()};
      print("UPDATTED FROFILE JSON $updatedProfile");
      final stringyfiedUpdatedProfile = jsonEncode(updatedProfile);
      print("STTRINGIFIED UPDATTED FROFILE $stringyfiedUpdatedProfile");
      await LocalStorage().storeString(
        key: StoreKeys.user,
        val: stringyfiedUpdatedProfile,
      );
    } catch (e) {
      print("ERROR IS $e");
    }
  }

  static deleteProfile() async {
    try {
      print("DELETING STORED USER");
      await LocalStorage().removeAll();
      final storedUser =
          await LocalStorage().getStoredString(key: StoreKeys.user);
      print("TEST FETTCHING DELETED STRORED USER $storedUser");
    } catch (e) {
      print("ERROR IS $e");
    }
  }
}
