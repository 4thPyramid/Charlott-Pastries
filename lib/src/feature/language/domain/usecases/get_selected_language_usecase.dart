import '../../data/app_repository.dart';

class GetSelectedLanguageUseCase {
  final IAppRepository _appRepository;

  GetSelectedLanguageUseCase(this._appRepository);

  Future<String?> call() async {
    return await _appRepository.getSelectedLanguage();
  }
}
