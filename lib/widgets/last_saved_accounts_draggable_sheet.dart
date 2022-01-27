import 'package:flutter/material.dart';
import 'account_card.dart';

class LastSavedAccountsDraggableSheet extends StatelessWidget {
  const LastSavedAccountsDraggableSheet({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final ScrollController listScrollController = ScrollController();
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      minChildSize: 0.18,
      maxChildSize: 0.7,
      builder: (BuildContext context, ScrollController scrollController) =>
          Container(
        constraints: BoxConstraints(minHeight: size.height * 0.4),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: SingleChildScrollView(
          controller: scrollController,
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
              ),
              const SizedBox(
                height: 8,
              ),
              ListView.builder(
                controller: listScrollController,
                itemBuilder: (context, index) {
                  return const AccountCard(
                    platformName: 'Spotify',
                  );
                },
                itemCount: 10,
                shrinkWrap: true,
                // controller: scrollController,
              ),
              SizedBox(
                height: size.height * 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
