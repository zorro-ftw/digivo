import 'package:digivo/app/app.locator.dart';
import 'package:digivo/app/app.router.dart';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void login() {
    _navigationService.replaceWith(Routes.homeView);
  }
}
