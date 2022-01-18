import 'package:digivo/constants.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 38,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: TextField(
            cursorColor: kHomeSearchBarTextColor.withOpacity(0.7),
            textAlignVertical: TextAlignVertical.center,
            style: const TextStyle(
              color: kHomeSearchBarTextColor,
              fontSize: 16,
            ),
            decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: const TextStyle(
                    color: kHomeSearchBarTextColor, fontSize: 16),
                contentPadding: EdgeInsets.zero,
                prefixIcon: const Icon(
                  FontAwesomeIcons.search,
                  size: 18,
                  color: kHomeSearchBarIconColor,
                ),
                constraints: BoxConstraints(maxWidth: size.width * 0.65),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          ),
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: kHomeFilterButtonColor,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: const Icon(
              Icons.filter_list_rounded,
              color: Colors.white,
              size: 28,
            ),
          ),
        ),
        const Opacity(opacity: 0)
      ],
    );
  }
}
