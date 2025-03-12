import 'package:intl/intl.dart';

String formatDateFunction(String dateTime) {
  final DateTime parsedDate = DateTime.parse(dateTime);
  final DateFormat formatter = DateFormat('yyyy-MM-dd / HH:mm');
  return formatter.format(parsedDate);
}
