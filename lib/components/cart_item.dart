import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  // The shoe that this cart item represents
  Shoe shoe;

  // Constructor for CartItem
  CartItem({
    super.key,
    required this.shoe,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // Method to remove the current shoe from the cart
  void removeItemFromCart() {
    // Access the Cart model and remove the shoe
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100], // Background color of the cart item
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      margin: const EdgeInsets.only(bottom: 10), // Bottom margin between items
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath), // Shoe image
        title: Text(widget.shoe.name), // Shoe name
        subtitle: Text(widget.shoe.price), // Shoe price
        trailing: IconButton(
          onPressed:
              removeItemFromCart, // Calls removeItemFromCart when pressed
          icon: const Icon(Icons.delete), // Delete icon
        ),
      ),
    );
  }
}
