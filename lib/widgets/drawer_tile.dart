import 'package:digivo/models/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({Key? key, required this.drawerItem, this.onTap})
      : super(key: key);

  final DrawerItem drawerItem;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListTile(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          title: Text(
            drawerItem.title,
            style: const TextStyle(fontFamily: 'AvenirNext', fontSize: 18),
          ),
          leading: Icon(
            drawerItem.icon,
            size: 18,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
