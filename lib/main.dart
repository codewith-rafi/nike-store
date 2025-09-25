import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_ecommerce/models/cart.dart';
// import 'package:shoes_ecommerce/pages/cart_page.dart';
// import 'package:shoes_ecommerce/pages/shop_page.dart';
import 'package:shoes_ecommerce/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[100],
        ),
        home: WelcomePage(),
        routes: {
          '/welcome': (context) => WelcomePage(),
          // '/cart': (context) => CartPage(),
          // '/home': (context) => ShopPage(),
          // other routes...
        },
      ),
    );
  }
}