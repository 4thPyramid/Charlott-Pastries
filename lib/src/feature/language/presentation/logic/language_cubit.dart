import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../domain/usecases/get_selected_language_usecase.dart';
import '../../domain/usecases/select_language_use_case.dart';

class LanguageCubit extends Cubit<Locale> {
  final GetSelectedLanguageUseCase _getSelectedLanguageUseCase;
  final SaveSelectedLanguageUseCase _saveSelectedLanguageUseCase;

  LanguageCubit(
      this._getSelectedLanguageUseCase, this._saveSelectedLanguageUseCase)
      : super(const Locale('en'));

  Future<void> loadSavedLanguage() async {
    final savedLanguage = await _getSelectedLanguageUseCase.call();
    emit(Locale(savedLanguage ?? 'en'));
  }

  void setLanguage(Locale locale) async {
    _saveSelectedLanguageUseCase.call(locale.languageCode);
    emit(locale);
  }
}
