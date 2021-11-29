import 'package:flutter/material.dart';

class BigProductCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  const BigProductCard({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 25.0),
      height: 178,
      width: 326,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: TextButton(
                    onPressed: () {
                      showAlertDialog(context,
                          alertTitle: title,
                          alertMessage: title + ' ürünü sepete eklenecek');
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Shop now ',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      fontSize: 14,
                                      color: const Color(0xff0ACF83),
                                    ),
                          ),
                          const WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(
                                Icons.arrow_right_alt,
                                color: Color(0xff0ACF83),
                                size: 28,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.network(imageUrl),
          ),
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context,
    {required String alertTitle, required String alertMessage}) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(alertTitle),
    content: Text(alertMessage),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
