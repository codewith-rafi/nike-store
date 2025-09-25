import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/components/shoe_tile.dart';
import 'package:shoes_ecommerce/models/cart.dart';
import 'package:shoes_ecommerce/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add to cart method
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addShoeToCart(shoe);

    // alert to user

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully Added!'),
        content: Text("Check your Cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Search"), Icon(Icons.search)],
                    ),
                  ),
                ),
                SizedBox(height: 20),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        letterSpacing: 1.2,
                      ),
                    ),
          
                    Text(
                      "See All",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
          
                SizedBox(height: 20),
          
                SizedBox(
                  height: 500, // Set a specific height for the horizontal list
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.shoeShop.length,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.shoeShop[index];
                      return ShoeTile(
                        shoe: shoe,
                        onTap: () => addShoeToCart(shoe),
                      );
                    },
                  ),
                ),
          
                SizedBox(height: 20),
          
                Text(
                  "New Collections",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
          
                SizedBox(height: 20),
          
                SizedBox(
                  height: 500, // Set a specific height for the horizontal list
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.shoeShop.length,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.shoeShop[index];
                      return ShoeTile(
                        shoe: shoe,
                        onTap: () => addShoeToCart(shoe),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
