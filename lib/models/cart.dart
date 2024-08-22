import 'package:flutter/material.dart';
import 'shoe.dart';

// It allows the Cart class to notify listeners (like UI components)
// whenever the state changes (e.g., when a shoe is added or removed from the cart).
class Cart extends ChangeNotifier {
  // List of shoes available for sale in the shop
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      description: 'The forward-thinking design of his latest signature shoe.',
      imagePath: 'lib/images/zoomfreak.png',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '220',
      description:
          'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
      imagePath: 'lib/images/airjordan.jpg',
    ),
    Shoe(
      name: 'KD Treys',
      price: '240',
      description:
          'A secure wildfoot strap is suited for scoring binges and defensive.',
      imagePath: 'lib/images/kdtrey.png',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '198',
      description:
          'Bouncy cushioning is paired with soft yet supportive foam for ......',
      imagePath: 'lib/images/kyrie.png',
    ),
  ];

  // List of items added by the user to their cart
  List<Shoe> userCart = [];

  // Method to get the list of shoes available for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // Method to get the list of items currently in the user's cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // Method to add a shoe to the user's cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe); // Add the selected shoe to the cart
    notifyListeners(); // Notify listeners (UI) to update based on the new state
  }

  // Method to remove a shoe from the user's cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe); // Remove the selected shoe from the cart
    notifyListeners(); // Notify listeners (UI) to update based on the new state
  }
}
