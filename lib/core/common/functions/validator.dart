import 'package:charlot/generated/app_strings.g.dart';
import 'package:easy_localization/easy_localization.dart';

class Validator {
  static String? validateRequired(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.thisFieldIsRequired.tr();
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.pleaseEnterAnEmail.tr();
    }

    const pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    final regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return AppStrings.pleaseEnterAValidEmail.tr();
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.pleaseEnterAPhoneNumber.tr();
    }

    const pattern = r'^\+?[0-9]{10,15}$';
    final regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return AppStrings.pleaseEnterAValidPhoneNumber.tr();
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.pleaseEnterAPassword.tr();
    }
    if (value.length < 6) {
      return AppStrings.passwordMustBeAtLeast6Characters.tr();
    }
    return null;
  }

  static String? validateAge(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال العمر';
    }
    final age = int.tryParse(value);

    if (age == null || age < 0) {
      return 'يرجى إدخال عمر صالح';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'يرجى إدخال الاسم';
    }
    final parts = value.split(' ');
    if (parts.isEmpty) {
      return 'يرجى إدخال اسم ثلاثي ';
    }
    const pattern = r'^[a-zA-Zا-ي ]+$';
    final regex = RegExp(pattern);
    for (var part in parts) {
      if (!regex.hasMatch(part)) {
        return 'يرجى إدخال اسم صالح (أحرف فقط)';
      }
    }
    return null;
  }

  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.pleaseEnterAPhoneNumber.tr();
    }
    if (value.length < 10) {
      return 'يرجى إدخال رقم هاتف صالح';
    }
    return null;
  }

  static String? validateManagerCode(String? value) {
    if (value == null || value.isEmpty) {
      return AppStrings.EnterTheManagersCode.tr();
    }

    if (value.length <= 6) {
      return AppStrings.managerCodeMustBeAtLeast6Characters.tr();
    }

    return null;
  }
}
