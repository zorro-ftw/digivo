import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

const kPrimaryColor = Color.fromRGBO(3, 166, 154, 1);
const kLoginTextFieldFillColor = Color(0xFFF0F0F3);
const kLoginTextFieldBorderColor = Color(0xFFA9DEDA);
const kLoginDividerColor = Color.fromRGBO(234, 234, 234, 1);
const kHomeFilterButtonColor = Color(0xFFFE8C79);
const kHomeSearchBarIconColor = Color(0xFF808080);
const kHomeSearchBarTextColor = Color(0x858f8f90);
const kHomeBackgroundGradientColor = Color(0xFFE0DFDF);
const kGeneralButtonColor = Color(0xFF334148);
const kLoginDivider = Padding(
  padding: EdgeInsets.symmetric(horizontal: 15),
  child: DottedLine(
    lineThickness: 3,
    dashColor: kLoginDividerColor,
    dashGapLength: 6,
  ),
);

//Color(0xFFC5C5C7);
