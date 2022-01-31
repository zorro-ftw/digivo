import 'dart:ui';
import 'package:digivo/ui/home/custom_drawer/custom_drawer_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:digivo/widgets/drawer_tile.dart';
import 'package:stacked/stacked.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CustomDrawerViewModel>.nonReactive(
      viewModelBuilder: () => CustomDrawerViewModel(),
      builder: (context, model, child) => Padding(
        padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
        child: Drawer(
          elevation: 0,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Expanded(
                    child: ListView.builder(
                      primary: true,
                      itemBuilder: (context, index) => DrawerTile(
                        drawerItem: model.drawerItemsList[index],
                        onTap: null,
                      ),
                      itemCount: model.drawerItemsList.length,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
