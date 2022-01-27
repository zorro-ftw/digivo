import 'package:digivo/constants.dart';
import 'package:digivo/ui/home/home_viewmodel.dart';
import 'package:digivo/widgets/custom_drawer.dart';
import 'package:digivo/widgets/last_saved_accounts_draggable_sheet.dart';
import 'package:digivo/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'categories_gridview/categories_gridview.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numbers = List.generate(18, (index) => index);
    final size = MediaQuery.of(context).size;
    print(size.height);
    final double _gridViewHeight = size.height - 305 - size.height * 0.18;
    print(_gridViewHeight);
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/wallpaper412.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Scaffold(
              resizeToAvoidBottomInset: false,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {},
                label: const Text(
                  'Add Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'AvenirNext',
                      fontSize: 15),
                ),
                icon: const Icon(
                  Icons.add,
                  size: 18,
                  color: Colors.white,
                ),
                backgroundColor: kGeneralButtonColor,
              ),
              drawerScrimColor: Colors.black12,
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              drawer: const CustomDrawer(),
              body: Stack(
                children: [
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Digivo,',
                              style: TextStyle(
                                  fontFamily: 'AvenirNext',
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Your vault in hand.',
                              style: TextStyle(
                                  fontFamily: 'AvenirNext',
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SearchBar(),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.white,
                                  kHomeBackgroundGradientColor
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(24),
                              topLeft: Radius.circular(24),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Categories',
                                        style: TextStyle(
                                            fontFamily: 'AvenirNext',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CategoriesGridview(
                                  gridViewHeight: _gridViewHeight,
                                  numbers: numbers),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  LastSavedAccountsDraggableSheet(size: size)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
