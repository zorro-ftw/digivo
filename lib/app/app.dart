import 'package:digivo/ui/home/home_view.dart';
import 'package:digivo/ui/login/login_view.dart';
import 'package:stacked/stacked_annotations.dart';

import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: LoginView, initial: true),
  MaterialRoute(page: HomeView)
], dependencies: [
  LazySingleton(classType: NavigationService),
])
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it**/
}
