import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_ecommerce/components/cart_item.dart';
import 'package:shoes_ecommerce/models/cart.dart';
import 'package:shoes_ecommerce/models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Cart>(
        builder: (context, value, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Text(
                "My Cart",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
              ),
            ),
            SizedBox(height: 8),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getUserCart()[index];

                  return CartItem(shoe: shoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
