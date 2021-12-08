// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:workshop/core/extension/string_extensions.dart';
import 'package:workshop/widgets/popular_product_card.dart';
import 'package:workshop/widgets/search_bar_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        toolbarTextStyle: Theme.of(context).textTheme.headline6,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: SizedBox(
              height: 24,
              width: 24,
              child: Icon(
                Icons.shopping_cart_outlined,
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
          'Search',
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          SearchBarWidget(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Latest Search',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.history),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(child: Text('TMA2 Wireless')),
                    Icon(Icons.close),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Icon(Icons.history),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(child: Text('Cable')),
                    Icon(Icons.close),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Popular product',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 20,
                ),
                PopularProductCard(productName: 'TMA-2 Comfort Wireless'),
                PopularProductCard(productName: 'TMA-2 DJ'),
                PopularProductCard(productName: 'TMA-2 Move Wireless'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
