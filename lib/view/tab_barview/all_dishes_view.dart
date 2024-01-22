import 'package:flutter/material.dart';

import 'package:ui_test/view/widgets/custum_item_card.dart';

class AllDishesView extends StatelessWidget {
  const AllDishesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustumItemCard(
              text: 'Burger',
              imageurl: 'assets/png/pngegg.png',
            ),
            CustumItemCard(
              text: 'Pizza',
              imageurl: 'assets/png/pngegg (4).png',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustumItemCard(
              text: 'Diet',
              imageurl: 'assets/png/pngegg (2).png',
            ),
            CustumItemCard(
              text: 'Sushi',
              imageurl: 'assets/png/pngegg (3).png',
            ),
          ],
        ),
      ],
    );
  }
}
