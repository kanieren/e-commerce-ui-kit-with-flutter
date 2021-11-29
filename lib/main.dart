import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workshop/view/home_view.dart';

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
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
