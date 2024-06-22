import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

const String dDMMYYYY = 'dd/MM/yyyy';

//? When recieving a datetime
extension DateTimeExtension on DateTime {
  /// Return a string representing [date] formatted according to our locale
  String format([
    String pattern = dDMMYYYY,
    String? locale,
  ]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }
}

class Dateformatter {
  static String formatyMMMd(DateTime date) {
    return DateFormat.yMMMd().format(date);
  }

  static String formatEEyMMMd(DateTime date) {
    return DateFormat.yMMMEd().format(date);
  }

  static String formatYYYYMMMDD(DateTime date) {
    return DateFormat('dd-MM-y').format(date);
  }
}

extension CharacterValidation on String {
  bool containsUpper() {
    for (var i = 0; i < length; i++) {
      var code = codeUnitAt(i);
      if (code >= 65 && code <= 90) return true;
    }
    return false;
  }

  bool containsLower() {
    for (var i = 0; i < length; i++) {
      var code = codeUnitAt(i);
      if (code >= 97 && code <= 122) return true;
    }
    return false;
  }

  bool containsSpecialChar() {
    for (var i = 0; i < length; i++) {
      var char = this[i];
      if ("#?!@\$ %^&*-".contains(char)) return true;
    }
    return false;
  }

  bool containsNumber() {
    for (var i = 0; i < length; i++) {
      var code = codeUnitAt(i);
      if (code >= 48 && code <= 57) return true;
    }
    return false;
  }
}

extension RemoveCommas on String {
  removeCommas() {
    if (contains(",")) {
      return replaceAll(",", "");
    } else {
      return this;
    }
  }
}

extension ExtractWebLinks on String {
  List<String> extractWebLinks() {
    final RegExp regex = RegExp(r'(?<!\))https?://\S+|www\.\S+(?<!\))');
    final Iterable<Match> matches = regex.allMatches(this);
    final List<String> links = matches.map((match) => match.group(0)!).toList();
    return links;
  }
}

extension RemoveWebLinks on String {
  removeWebLinks() {
    final RegExp regex = RegExp(r'https?://\S+|www\.\S+');
    return this.replaceAll(regex, '');
  }
}

extension ExtractUserNames on String {
  List<String> extractUserNames() {
    final regex = RegExp(r'@\w+');
    final names = regex.allMatches(this);
    final List<String> userName = names.map((name) => name.group(0)!).toList();

    return userName;
  }

  bool isSearchingForUser() {
    final regex = RegExp(r'@\w+');
    final userName = regex.hasMatch(this);
    return userName;
  }

  String removeAtSymbolToSearchInApi() {
    RegExp regex = RegExp(r'@');
    return this.replaceAll(regex, '');
  }

  String removeUsername() {
    RegExp regex = RegExp(r'@\w+');
    return this.replaceAll(regex, '');
  }
}

extension CapitalizeFirst on String {
  String capiTalizeFirst() {
    return this[0].toUpperCase() + substring(1);
  }

  String obscuredMail() {
    var newString = '';
    final List<String> emailList = split("");
    for (var i = 0; i < emailList.length; i++) {
      if (i != 0 && emailList[i] != '@' && i < indexOf('.')) {
        emailList[i] = '*';
        newString = emailList.join();
      }
    }
    return newString;
  }
}

extension RemoveHttps on String {
  String removeHttp() {
    final https = RegExp(r"^https://");
    return replaceAll(https, '');
  }
}

extension FormatAmount on num? {
  String get formatAmount => (this == null)
      ? "0"
      : NumberFormat.currency(
          name: '',
          decimalDigits: Utils.isInteger(this!) ? 0 : 2,
        ).format(this);

  String get getmaskText {
    List data = [];
    for (var element in toString().split('')) {
      element = '*';
      data.add(element);
    }
    return data.join();
  }
}

extension DateTimeExtensionConverter on DateTime {
  String get convertDateHeaderToString => day == DateTime.now().day
      ? "Today"
      : day == DateTime.now().day - 1
          ? "Yesterday"
          : Dateformatter.formatEEyMMMd(this);

  String splitDateOnly([String? pattern]) {
    return toString().split(pattern ?? ' ')[0];
  }
}

extension Group<T> on Iterable<T> {
  Groups<K, T> groupBy<K>(Function(T) key) {
    final map = <K, List<T>>{};
    for (final element in this) {
      final keyValue = key(element);
      if (!map.containsKey(keyValue)) {
        map[keyValue] = [];
      }
      map[keyValue]?.add(element);
    }
    return Groups(keys: map.keys.toList(), children: map.values.toList());
  }
}

class Groups<K, T> {
  List<K> keys;
  List<List<T>> children;

  Groups({
    required this.keys,
    required this.children,
  });

  @override
  String toString() {
    return 'Groups{keys: $keys, children: $children}';
  }
}

class Utils {
  static isInteger(num value) => value is int || value == value.roundToDouble();
}