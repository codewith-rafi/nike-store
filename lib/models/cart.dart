import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes
  List<Shoe> shoeShop = [
    Shoe(
      name: "Nike Air Max 270",
      imagePath: "assets/images/shoes1.png",
      price: "\$150",
      description:
          "The Nike Air Max 270 is inspired by two icons of big Air: the Air Max 180 and Air Max 93. It features the first-ever Max Air unit created specifically for lifestyle, and a sleek, modern design.",
    ),
    Shoe(
      name: "Nike Air Force 1",
      imagePath: "assets/images/shoes2.png",
      price: "\$120",
      description:
          "The Nike Air Force 1 is a classic basketball shoe that has become a cultural icon. Known for its timeless design and comfort, it features a leather upper and a durable rubber sole.",
    ),
    Shoe(
      name: "Nike Blazer Mid '77",
      imagePath: "assets/images/shoes3.png",
      price: "\$100",
      description:
          "The Nike Blazer Mid '77 is a retro-inspired sneaker that combines vintage style with modern comfort. It features a high-top silhouette, leather and suede upper, and a rubber sole for traction.",
    ),
    Shoe(
      name: "Nike React Flyknit",
      imagePath: "assets/images/shoes4.png",
      price: "\$160",
      description:
          "The Nike React Infinity Run Flyknit is designed to help reduce injury and keep you on the run. It features a lightweight Flyknit upper and a responsive React foam midsole for a smooth, comfortable ride.",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }
  
  // add shoe to cart
  void addShoeToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
