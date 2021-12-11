import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String? title;
  final String? price;
  final String? imageUri;
  const CartItem({
    Key? key,
    this.title,
    this.price,
    this.imageUri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 10.0),
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
                  imageUri!,
                  height: 55,
                  width: 55,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ListTile(
                title: Text(title!),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      price!,
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
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Icon(Icons.remove),
                        ),
                        Spacer(),
                        Text(
                          '1',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Spacer(),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Icon(Icons.add),
                        ),
                        Spacer(),
                        Spacer(),
                        Spacer(),
                        Spacer(),
                        Icon(
                          Icons.delete_forever_sharp,
                          color: Color(0xffBABABA),
                        ),
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
