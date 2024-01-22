import 'package:flutter/material.dart';
import 'package:ui_test/constants/color_const.dart';
import 'package:ui_test/model/item_model.dart';
import 'package:ui_test/view/tab_barview/all_dishes_view.dart';
import 'package:ui_test/view/tab_barview/custumdish_view.dart';
import 'package:ui_test/view/widgets/bottom_nav.dart';
import 'package:ui_test/view/widgets/buttons.dart';
import 'package:ui_test/view/widgets/custum_appbar.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/bg1.png"),
              ),
            ),
            child: Column(
              children: [
                const CustumAppBar(),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    TabBar(
                        indicatorColor: Colors.yellow,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 5,
                        labelStyle: TextStyle(
                            fontSize: 18,
                            color: kblack,
                            fontWeight: FontWeight.bold),
                        dividerColor: Colors.transparent,
                        tabAlignment: TabAlignment.start,
                        isScrollable: true,
                        unselectedLabelStyle: TextStyle(
                            fontSize: 18,
                            color: kblack,
                            fontWeight: FontWeight.w300),
                        tabs: const [
                          Tab(
                            text: 'All',
                          ),
                          Tab(
                            text: 'Burger',
                          ),
                          Tab(
                            text: 'Sushi',
                          ),
                          Tab(
                            text: 'Pizza',
                          ),
                        ]),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: custumSortbutton(),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    child: TabBarView(children: [
                      AllDishesView(),
                      DishView(),
                      DishView(),
                      DishView(),
                    ]),
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: CustumBottomNavBar()),
    );
  }
}
