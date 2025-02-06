import 'package:charlot/src/feature/sales/home/domain/repos/home_repos.dart';

class GetProfileUS {
  final HomeRepos homeRepos;

  GetProfileUS(this.homeRepos);

  Future getProfile() => homeRepos.getProfile();
}