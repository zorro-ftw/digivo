import 'package:digivo/widgets/category_tile.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends BaseViewModel {
  static const colors = [Colors.red, Colors.orange, Colors.green];
  Widget buildCategoryTile(int index, double height) {
    final _containerHeight = height;
    return CategoryTile(containerHeight: _containerHeight);
  }
}
