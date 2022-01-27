import 'package:digivo/constants.dart';
import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({Key? key, required this.platformName}) : super(key: key);

  final String platformName;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
      height: 85,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: kAccountCardFillColor),
    );
  }
}
