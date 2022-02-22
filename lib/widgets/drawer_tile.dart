import 'package:digivo/constants.dart';
import 'package:digivo/models/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({Key? key, required this.drawerItem, required this.onTap})
      : super(key: key);

  final DrawerItem drawerItem;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Material(
        child: ListTile(
          tileColor: drawerItem.isEnabled == false
              ? kGeneralButtonColor
              // ? Colors.orange
              : ListTileTheme.of(context).tileColor,
          trailing: drawerItem.isEnabled == false
              ? Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Text(
                    'SOON',
                    style: TextStyle(
                        color: Colors.red.shade300,
                        fontFamily: 'AvenirNext',
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                )
              : null,
          iconColor: drawerItem.isEnabled == true
              ? ListTileTheme.of(context).iconColor
              : Colors.grey.shade400,
          textColor: drawerItem.isEnabled == true
              ? ListTileTheme.of(context).textColor
              : Colors.grey.shade400,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          title: Text(
            drawerItem.title,
            style: const TextStyle(
                fontFamily: 'AvenirNext',
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          leading: Icon(
            drawerItem.icon,
            size: 18,
          ),
          onTap: drawerItem.isEnabled == true ? onTap : null,
        ),
      ),
    );
  }
}
