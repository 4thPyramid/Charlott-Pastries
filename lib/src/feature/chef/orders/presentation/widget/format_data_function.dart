import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:intl/intl.dart';

String formatDate(String dateTimeString) {
  try {
    final dateTime = DateTime.parse(dateTimeString);
    final formatter = DateFormat('hh:mm a');
    return formatter.format(dateTime);
  } catch (e) {
    return AppStrings.unAvailableTime.tr();
  }
}
