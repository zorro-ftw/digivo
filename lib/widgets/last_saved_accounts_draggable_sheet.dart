import 'package:flutter/material.dart';

class LastSavedAccountsDraggableSheet extends StatelessWidget {
  const LastSavedAccountsDraggableSheet({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      minChildSize: 0.18,
      maxChildSize: 0.7,
      builder: (BuildContext context, ScrollController scrollController) =>
          SingleChildScrollView(
        controller: scrollController,
        child: Container(
          constraints: BoxConstraints(minHeight: size.height * 0.4),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Divider(
                color: Colors.black26,
                endIndent: size.width * 0.47,
                indent: size.width * 0.47,
                thickness: 3,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Latest Accounts',
                      style: TextStyle(
                          fontFamily: 'AvenirNext',
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
