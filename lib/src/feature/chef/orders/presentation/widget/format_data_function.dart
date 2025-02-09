import 'package:intl/intl.dart';

String formatDate(String dateTimeString) {
  try {
    final dateTime = DateTime.parse(dateTimeString);
    final formatter = DateFormat('hh:mm a');
    return formatter.format(dateTime);
  } catch (e) {
    return 'وقت غير صالح';
  }
}
