// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workshop/widgets/detail_tab_chip.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'USD 350',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Color(0xff0ACF83),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '\nTMA-2\nHD WIRELESS',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DetailTabChip(title: 'Overview', isSelected: true),
                DetailTabChip(title: 'Features'),
                DetailTabChip(title: 'Specification'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
