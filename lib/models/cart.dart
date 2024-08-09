import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Nike Air",
        price: "236",
        description:
            "Iconic design with a leather upper, cushioned sole, and Air technology for all-day comfort and style.",
        imagePath: "lib/images/black_sniker.png"),
    Shoe(
        name: "Nike 90",
        price: "240",
        description:
            "Classic silhouette featuring visible Air cushioning, durable materials, and timeless appeal.",
        imagePath: "lib/images/bluesport_sniker.png"),
    Shoe(
        name: "Nike Run",
        price: "190",
        description:
            "High-performance running shoe with React foam, breathable upper",
        imagePath: "lib/images/lightpink_sniker.png"),
    Shoe(
        name: "Nike Dunk",
        price: "220",
        description:
            "Retro-inspired sneaker with a low-top profile, premium materials, and versatile colorways for casual wear.",
        imagePath: "lib/images/black_orange_sniker.png"),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return shoeShop;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items to cart
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
