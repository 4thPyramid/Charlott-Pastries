import 'package:charlot/core/data/cached/cache_helper.dart';

abstract class IAppRepository {
  Future<String?> getSelectedLanguage();

  void saveSelectedLanguage(String language);

}

class AppRepositoryImpl implements IAppRepository {
  final CacheHelper _preferenceHelper;

  AppRepositoryImpl(this._preferenceHelper);

  @override
  Future<String?> getSelectedLanguage() async {
    return await _preferenceHelper.language;
  }

  @override
  Future<void> saveSelectedLanguage(String language) async {
    await _preferenceHelper.setLanguage(language);
  }

  
}
