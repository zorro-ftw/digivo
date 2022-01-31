import 'package:digivo/app/app.locator.dart';
import 'package:digivo/app/app.router.dart';
import 'package:digivo/models/drawer_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class CustomDrawerViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final List<DrawerItem> drawerItemsList = [
    DrawerItem(
      icon: FontAwesomeIcons.home,
      title: 'Home',
      routeName: Routes.homeView,
    ),
    DrawerItem(
      icon: Icons.settings_rounded,
      title: 'Settings',
      // routeName: Routes.settingsView,
    ),
    DrawerItem(
        icon: Icons.arrow_upward_rounded, title: 'Pro', isEnabled: false),
  ];

  void navigate(String page) {
    _navigationService.navigateTo(page);
  }
}
