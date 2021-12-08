// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workshop/core/extension/string_extensions.dart';
import 'package:workshop/widgets/big_product_card.dart';
import 'package:workshop/widgets/menu_tag_list_widget.dart';
import 'package:workshop/widgets/product_card.dart';
import 'package:workshop/widgets/search_bar_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarTextStyle: Theme.of(context).textTheme.headline6,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SizedBox(
              height: 35,
              width: 35,
              child: CircleAvatar(
                child: Image.asset("avatar".toPNG),
              ),
            ),
          )
        ],
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
          ],
        ),
        title: Image.asset("logo".toPNG),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Andrea',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontSize: 16),
                ),
                Text(
                  'What are you looking for today?',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SearchBarWidget(),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Color(0xffF6F6F6),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 32,
                      ),
                      const MenuTagListWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: const [
                            BigProductCard(
                              title: 'TMA-2\nModular Headphone',
                              imageUrl:
                                  'https://m.media-amazon.com/images/I/51WdpaV2LjL.jpg',
                            ),
                            BigProductCard(
                              title: 'Connector',
                              imageUrl:
                                  'https://m.media-amazon.com/images/I/71eABaZU3oL._SL1500_.jpg',
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Featured Products',
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
            ),
          ),
        ],
      ),
    );
  }
}
