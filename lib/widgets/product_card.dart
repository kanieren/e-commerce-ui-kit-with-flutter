import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final int price;
  final String imageUrl;
  const ProductCard({
    Key? key,
    required this.name,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Card(
        child: SizedBox(
          height: 213,
          width: 155,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.network(imageUrl),
                flex: 2,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(name),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'USD ' + price.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
