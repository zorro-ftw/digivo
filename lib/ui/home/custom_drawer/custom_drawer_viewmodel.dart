import 'package:digivo/models/drawer_item.dart';
import 'package:digivo/ui/home/home_view.dart';
import 'package:digivo/ui/settings/settings_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class CustomDrawerViewModel extends BaseViewModel {
  final List<DrawerItem> drawerItemsList = [
    DrawerItem(
      icon: FontAwesomeIcons.home,
      title: 'Home',
      routeName: const HomeView(),
    ),
    DrawerItem(
      icon: Icons.settings_rounded,
      title: 'Settings',
      routeName: const SettingsView(),
    ),
    DrawerItem(
        icon: Icons.arrow_upward_rounded,
        title: 'Pro',
        isEnabled: false,
        routeName: null
        //TODO - PRO ACCOUNT PAGE WILL BE ADDED FOR ROUTENAME
        ),
  ];
}
