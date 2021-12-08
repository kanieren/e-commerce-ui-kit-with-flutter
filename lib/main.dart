import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workshop/view/home/home_view.dart';
import 'package:workshop/view/product_detail/product_detail.dart';
import 'package:workshop/view/search/search_view.dart';
import 'package:workshop/view/sign_in/sign_in_view.dart';

import 'view/sign_up/sign_up_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: ProductDetail(),
      debugShowCheckedModeBanner: false,
    );
  }
}
