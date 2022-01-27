import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../home_viewmodel.dart';

class CategoriesGridview extends StatelessWidget {
  const CategoriesGridview({
    Key? key,
    required double gridViewHeight,
    required this.numbers,
  })  : _gridViewHeight = gridViewHeight,
        super(key: key);

  final double _gridViewHeight;
  final List<int> numbers;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => SafeArea(
        child: SizedBox(
          height: _gridViewHeight,
          child: GridView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 0),
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return model.buildCategoryTile(index, _gridViewHeight / 3);
              }),
        ),
      ),
    );
  }
}
