import 'package:flutter/material.dart';
import 'package:motion_shop/pages/auth/login/login_page.dart';
import 'package:motion_shop/pages/auth/register/register_page.dart';
import 'package:motion_shop/pages/cart/cart_page.dart';
import 'package:motion_shop/pages/detail_product/detail_product_page.dart';
import 'package:motion_shop/pages/home/home_page.dart';
import 'package:motion_shop/pages/invoice/invoice_page.dart';

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
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/product': (context) => const DetailProductPage(),
        '/cart': (context) => const CartPage(),
        '/invoice': (context) => const InvoicePage(),
      },
      title: 'Task Week 2 - Flutter Motion Lab',
    );
  }
}
