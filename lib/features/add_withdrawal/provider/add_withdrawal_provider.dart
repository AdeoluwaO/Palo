import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

enum ButtonState{
  idle,
  saving
}

class AddWithdrawalProvider extends ChangeNotifier {

  GlobalKey<FormState> addWithdrawalFormKey = GlobalKey<FormState>();

  bool _showMessage = false;
  ButtonState _state = ButtonState.idle;
  String _selectedBank = '';
  String _accountNumber = '';
  String _ninNumber = '';

  String get selectedBank => _selectedBank;
  String get accountNumber => _accountNumber;
  String get ninNumber => _ninNumber;
  bool get showMessage => _showMessage;
  ButtonState get state => _state;

  void toggleMessage() {
    _showMessage = !_showMessage;
    notifyListeners();
  }

  void setSelectedBank(String bank) {
    _selectedBank = bank;
    notifyListeners();

  }

  void setAccountNumber(String value) {
    _accountNumber = value;
    notifyListeners();
  }

  void setNinNumber(String value) {
    _ninNumber = value;
    notifyListeners();
  }

  void setSavingState() {
    _state = ButtonState.saving;
    notifyListeners();
  }

  bool isFormFilled() {
    if(_accountNumber.isNotEmpty &&
        _selectedBank.isNotEmpty && _ninNumber.isNotEmpty){
      return true;
    } else {
      return false;
    }
  }

}
