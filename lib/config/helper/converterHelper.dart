import 'package:intl/intl.dart';

class ConverterHelper {

  static String stringToDouble(String data) {

    var dataInInt = int.parse(data.replaceAll(",", ""));

    print(dataInInt);

    var formatter = NumberFormat.compact(locale: "id_ID");

    return formatter.format(dataInInt);
  }
}