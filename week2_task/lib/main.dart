import 'package:flutter/material.dart';
import 'package:week2_task/pages/detail_product/detail_product_page.dart';
import 'package:week2_task/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Rute default (halaman pertama)
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/product': (context) => const DetailProductPage(),
      },
      title: 'Task Week 2 - Flutter Motion Lab',
    );
  }
}
