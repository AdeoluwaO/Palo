import 'package:flutter/material.dart';

class ForgotPasswordProvider extends ChangeNotifier {

  String _phoneNumber = '';
  String _email = '';
  String _pass = '';
  String _confirmPass = '';

  String get phoneNumber => _phoneNumber;
  String get email => _email;
  String get pass => _pass;
  String get confirmPass => _confirmPass;

  bool _showPassIcon = false;
  bool get showPassIcon => _showPassIcon;

  bool _isPassTapped = false;
  bool get isPassTapped => _isPassTapped;

  bool _isConfirmPassTapped = false;
  bool get isConfirmPassTapped => _isConfirmPassTapped;

  bool _showConfirmPassIcon = false;
  bool get showConfirmPassIcon => _showConfirmPassIcon;

  bool _obscurePass = true;
  bool get obscurePass => _obscurePass;

  bool _obscureConfirmPass = true;
  bool get obscureConfirmPass => _obscureConfirmPass;

  void toggleConfirmPass() {
    toggleConfirmPassIcon();
    _obscureConfirmPass = !_obscureConfirmPass;
    notifyListeners();
  }

  void toggleConfirmPassIcon() {
    _isConfirmPassTapped = !_isConfirmPassTapped;
    notifyListeners();
  }

  void togglePass() {
    togglePassIcon();
    _obscurePass = !_obscurePass;
    notifyListeners();
  }

  void togglePassIcon() {
    _isPassTapped = !_isPassTapped;
    notifyListeners();
  }

  void setPhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

  void setEmail(String value) {
    _email = value;
    notifyListeners();
  }

  void setPass(String value) {
    _pass = value;
    notifyListeners();
  }

  void setConfirmPass(String value) {
    _confirmPass = value;
    notifyListeners();
  }

  bool isPasswordFormFilled() {
    if(_phoneNumber.isNotEmpty && _email.isNotEmpty){
      return true;
    } else {
      return false;
    }
  }

  bool isNewPasswordFormFilled() {
    if(_pass.isNotEmpty && _confirmPass.isNotEmpty){
      return true;
    } else {
      return false;
    }
  }

  bool isFirstForm() {
    if(_pass.isNotEmpty){
      _showPassIcon = true;
      return true;
    } else {
      _showPassIcon = false;
      return false;
    }
  }

  bool isSecondForm() {
    if(_confirmPass.isNotEmpty){
      _showConfirmPassIcon = true;
      return true;
    } else {
      _showConfirmPassIcon = false;
      return false;
    }
  }

}