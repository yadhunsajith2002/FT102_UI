import 'package:flutter/material.dart';
import 'package:ui_test/constants/color_const.dart';
import 'package:get/get.dart';
import 'package:ui_test/model/item_model.dart';
import 'package:ui_test/view/details_view/item_details_view.dart';

class DishView extends StatelessWidget {
  DishView({
    super.key,
  });

  List<Item> items = [
    Item(title: 'Chiken Burger', imageUrl: 'assets/png/pngegg.png'),
    Item(title: 'Chiken Burger', imageUrl: 'assets/png/pngegg.png'),
    Item(title: 'Chiken Burger', imageUrl: 'assets/png/pngegg.png'),
    Item(title: 'Chiken Burger', imageUrl: 'assets/png/pngegg.png'),
    Item(title: 'Chiken Burger', imageUrl: 'assets/png/pngegg.png'),
    Item(title: 'Chiken Burger', imageUrl: 'assets/png/pngegg.png'),
    Item(title: 'Chiken Burger', imageUrl: 'assets/png/pngegg.png'),
    Item(title: 'Chiken Burger', imageUrl: 'assets/png/pngegg.png'),
    Item(title: 'Chiken Burger', imageUrl: 'assets/png/pngegg.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Get.to(() => ItemViewScreen(
                        item: item,
                        index: index,
                      ));
                },
                child: Card(
                  elevation: 10,
                  color: kwhite,
                  child: Column(
                    children: [
                      SizedBox(
                          height: 100,
                          child: Hero(
                            tag: item,
                            child: Image.asset(
                              item.imageUrl,
                            ),
                          )),
                      Text(
                        item.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                      Text(
                        "Price \$ 56",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ))
      ],
    );
  }
}
