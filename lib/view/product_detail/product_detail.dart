// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:workshop/core/extension/string_extensions.dart';
import 'package:workshop/widgets/detail_tab_chip.dart';
import 'package:workshop/widgets/product_card.dart';
import 'package:workshop/widgets/review_card.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'USD 350',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: Color(0xff0ACF83),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '\nTMA-2\nHD WIRELESS',
                          style:
                              Theme.of(context).textTheme.headline5!.copyWith(
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
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset('headset_big'.toPNG),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF6F6F6)),
                          height: 391,
                          width: 285,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset('headset2_big'.toPNG),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF6F6F6)),
                          height: 391,
                          width: 285,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Text('Review (102)'),
                  SizedBox(height: 30),
                  ReviewCard(
                    userName: 'Madelina',
                    commentTime: '1 Month ago',
                    star: 4,
                    comment:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  ),
                  ReviewCard(
                      userName: 'Irfan',
                      commentTime: '1 Month ago',
                      star: 5,
                      images: ['headset', 'headset', 'headset'],
                      comment: ''
                          'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
                  ReviewCard(
                      userName: 'Ravi Putra',
                      commentTime: '1 Month ago',
                      star: 5,
                      comment:
                          'Excepteur sint occaecat cupidatat non proident'),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'See All Reviews',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Color(0xff7F7F7F)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            Container(
              height: 319,
              color: Color(0xffF6F6F6),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 28,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Another Product',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 16),
                        ),
                        Text(
                          'See All',
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 14,
                                    color: const Color(0xff7F7F7F),
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          ProductCard(
                            name: 'TMA-2 HD Wireless',
                            price: 350,
                            imageUrl:
                                'https://m.media-amazon.com/images/I/51WdpaV2LjL.jpg',
                          ),
                          ProductCard(
                            name: 'CO2 - Cable',
                            price: 25,
                            image: Image.asset("cable".toPNG),
                          ),
                          ProductCard(
                            name: 'CO2 - Cable Version 2',
                            price: 45,
                            imageUrl:
                                'https://www.guilcor.fr/4331-large_default/rallonge-pour-sonde-co2-connecteur-elka-minidin-cable-1-metre.jpg',
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
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
                child: Text('Add To Cart'),
              ),
            ),
            SizedBox(
              height: 33,
            ),
          ],
        ),
      ),
    );
  }
}
