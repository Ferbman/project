import 'package:flutter/material.dart';
import 'package:project/widgets/CartBottomBar.dart';
import '../widgets/CartAppBar.dart';
import '../widgets/CartItems.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          EasyAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 213, 215, 220),
            ),
            child: Column(children: [
              CartItems(),
            ]),
          )
        ],
      ),
      bottomNavigationBar: CartBottomBar(),
    );
  }
}
