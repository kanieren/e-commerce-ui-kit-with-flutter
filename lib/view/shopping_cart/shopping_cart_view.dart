// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:workshop/core/extension/string_extensions.dart';
import 'package:workshop/widgets/cart_item.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarTextStyle: Theme.of(context).textTheme.headline6,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: SizedBox(
              height: 24,
              width: 24,
              child: Icon(
                Icons.delete_outline_rounded,
                color: Colors.black,
              ),
            ),
          )
        ],
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ],
        ),
        title: Text(
          'Shopping Cart',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 33,
          ),
          CartItem(
            title: 'TMA-2 Comfort Wireless',
            price: 'USD 270',
            imageUri: 'headset_search'.toPNG,
          ),
          SizedBox(
            height: 35,
          ),
          CartItem(
            title: 'C02 - Cable',
            price: 'USD 25',
            imageUri: 'cable'.toPNG,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total 2 items'),
                Text(
                  'USD 295',
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xff0ACF83),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Proceed to Checkout'),
                  Icon(Icons.arrow_right_outlined),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 33,
          ),
        ],
      ),
    );
  }
}
