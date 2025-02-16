
import '../../data/app_repository.dart';

class SaveSelectedLanguageUseCase {
  final IAppRepository _appRepository;

  SaveSelectedLanguageUseCase(this._appRepository);

  void call(String language) {
    _appRepository.saveSelectedLanguage(language);
  }
}
