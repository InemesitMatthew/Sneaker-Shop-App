import 'package:flutter/material.dart';
// Import the Provider package for state management
import 'package:provider/provider.dart';
// Import the CartItem widget from the components directory
import '../components/cart_item.dart';
// Import the Shoe model
import '../models/shoe.dart';
// Import the Cart model which is the state we are managing
import '../models/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      // Consumer listens to the Cart model and rebuilds its children when the Cart changes
      builder: (context, value, child) => Padding(
        // Add padding on the left and right of the page
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          // Align children to the start of the column
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading of the cart page
            const Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            // Add some vertical space between the heading and the list
            const SizedBox(
              height: 20,
            ),

            // Expanded widget allows the ListView to take up all remaining space
            Expanded(
              child: ListView.builder(
                // Get the number of items in the user's cart
                itemCount: value.getUserCart().length,
                // Build each item in the list
                itemBuilder: (context, index) {
                  // Get the individual shoe at the current index
                  Shoe individualShoe = value.getUserCart()[index];

                  // Return a CartItem widget, passing the individual shoe as a parameter
                  return CartItem(shoe: individualShoe);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
