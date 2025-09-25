import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/models/cart.dart';
import 'package:shoes_ecommerce/models/shoe.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {

    // remove item from cart
    void removeItemFromCart() {
      Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Image.asset(widget.shoe.imagePath),
            title: Text(widget.shoe.name),
            subtitle: Text(widget.shoe.price),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: removeItemFromCart,
            ),
          ),
        ),
      ),
    );
  }
}
