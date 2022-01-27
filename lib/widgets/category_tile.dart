import 'package:flutter/material.dart';
import '../constants.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required double containerHeight,
  })  : _containerHeight = containerHeight,
        super(key: key);

  final double _containerHeight;

  @override
  Widget build(BuildContext context) {
    print(_containerHeight);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.account_balance_wallet_rounded,
          color: kHomeFilterButtonColor,
          size: _containerHeight / 2,
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Wallet',
          style: TextStyle(
            fontFamily: 'AvenirNext',
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
