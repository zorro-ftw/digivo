import 'dart:ui';

import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            ),
          ),
        ),
      ),
    );
  }
}
