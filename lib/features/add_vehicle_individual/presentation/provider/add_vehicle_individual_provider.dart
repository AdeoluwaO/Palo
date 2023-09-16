import 'package:dispatchapp/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddVehicleIndividualProvider extends ChangeNotifier {

  String _vehicle = '';
  String _model = '';
  String _year = '';
  String _regNo = '';
  bool _showMessage = false;
  XFile? _imageFile;
  XFile? _imageFile2;
  String _buttonText = 'Take Vehicle Picture';
  String _buttonText2 = 'Take a picture of the registration plate';
  bool _isLoading = false;
  Color _buttonColor = Colors.blue;

  String get vehicle => _vehicle;
  String get model => _model;
  String get year => _year;
  String get regNo => _regNo;
  XFile? get imageFile => _imageFile;
  XFile? get imageFile2 => _imageFile2;
  bool get showMessage => _showMessage;
  String get buttonText => _buttonText;
  String get buttonText2 => _buttonText2;
  bool get isLoading => _isLoading;
  Color get buttonColor => _buttonColor;

  void setSelectedVehicle(String vehicle) {
    _vehicle = vehicle;
    notifyListeners();
  }

  void setSelectedModel(String model) {
    _model = model;
    notifyListeners();
  }

  void setSelectedYear(String year) {
    _year = year;
    notifyListeners();
  }

  void setSelectedRegNo(String regNo) {
    _regNo = regNo;
    notifyListeners();
  }

  void toggleMessage() {
    _showMessage = !_showMessage;
    notifyListeners();
  }

  Future<void> captureImage() async {
    final picker = ImagePicker();

    try {
      final pickedFile = await picker.pickImage(
        source: ImageSource.camera,
      );

      if (pickedFile != null) {
        _imageFile = pickedFile;
        _buttonText = 'Change Picture';
        notifyListeners();
      }
    } catch (e) {
      print('Error capturing image: $e');
    }
  }

  Future<void> captureImage2() async {
    final picker = ImagePicker();

    try {
      final pickedFile = await picker.pickImage(
        source: ImageSource.camera,
      );

      if (pickedFile != null) {
        _imageFile2 = pickedFile;
        _buttonText2 = 'Change Picture';
        notifyListeners();
      }
    } catch (e) {
      print('Error capturing image: $e');
    }
  }

  void startLoading() {
    _isLoading = true;
    _buttonColor = AppColors.lightRedd; // Change the button color when loading
    notifyListeners();
  }

}
