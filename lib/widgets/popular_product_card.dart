// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workshop/core/extension/string_extensions.dart';

class PopularProductCard extends StatelessWidget {
  final String productName;
  const PopularProductCard({
    Key? key,
    required this.productName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                width: 75,
                height: 75,
                child: Image.asset(
                  'headset_search'.toPNG,
                  height: 55,
                  width: 55,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ListTile(
                title: Text(productName),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'USD 270',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text('4.6'),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: Text('86 Reviews')),
                        Icon(Icons.more_vert)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
