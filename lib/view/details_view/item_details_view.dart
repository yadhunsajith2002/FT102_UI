import 'package:flutter/material.dart';
import 'package:ui_test/constants/color_const.dart';
import 'package:ui_test/constants/styles.dart';
import 'package:ui_test/model/item_model.dart';
import 'package:ui_test/view/widgets/bottom_nav.dart';
import 'package:ui_test/view/widgets/custum_appbar.dart';

class ItemViewScreen extends StatelessWidget {
  const ItemViewScreen({super.key, required this.item, required this.index});

  final Item item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/Screenshot 2024-01-22 182250.png"),
          CustumAppBar(),
          Hero(tag: item, child: Image.asset(item.imageUrl)),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  color: kyellow,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.alarm),
                    Text("30 mints"),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Baked TenderLoin",
                      style: textStyle(
                          color: kblack, weight: FontWeight.bold, size: 26),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 15,
                          child: Center(child: Icon(Icons.remove)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("1"),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.yellow,
                          radius: 15,
                          child: Icon(Icons.add),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(
                        "The best tender porked Gralic baked beef pork ever made"))
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Price :"),
                    Text(
                      "\$ 25 ",
                      style: textStyle(
                          color: kblack, weight: FontWeight.bold, size: 22),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: kyellow, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Order ",
                      style: textStyle(
                          color: kblack, weight: FontWeight.bold, size: 22),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: CustumBottomNavBar(),
    );
  }
}
