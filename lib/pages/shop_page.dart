import 'package:flutter/material.dart';
// Import the Provider package for state management
import 'package:provider/provider.dart';
// Import custom components and models
import '../components/shoe_tile.dart';
import '../models/shoe.dart';
import '../models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // Method to add a shoe to the cart
  void addShoeToCart(Shoe shoe) {
    // Access the Cart model and add the selected shoe to the cart
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // Show a dialog to inform the user that the shoe was successfully added
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Successfully added'),
        content: Text('Check your cart'), // Message displayed in the dialog
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      // Consumer listens to the Cart model and rebuilds its children when
      // the cart's state changes
      builder: (context, value, child) => Column(
        children: [
          // Search bar at the top of the page
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200], // Background color of the search bar
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Space between the text and icon
              children: [
                // Placeholder text for the search bar
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                // Search icon
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          // Motivational message under the search bar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'everyone flies... some fly longer than others',
              style: TextStyle(color: Colors.grey[600]), // Text color
            ),
          ),

          // Section title for "Hot Picks"
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Align text to the edges
              crossAxisAlignment:
                  CrossAxisAlignment.end, // Align text to the bottom of the row
              children: [
                // "Hot Picks" title
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, // Bold font weight
                    fontSize: 24, // Font size
                  ),
                ),
                // "See all" link
                Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, // Bold font weight
                    color: Colors.blue, // Text color
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height:
                10, // Add vertical space between "Hot Picks" and the list of shoes
          ),

          // List of shoes displayed horizontally
          Expanded(
            child: ListView.builder(
              itemCount: 4, // Number of shoes to display
              scrollDirection:
                  Axis.horizontal, // Scroll direction set to horizontal
              itemBuilder: (context, index) {
                // Get the shoe at the current index from the list
                Shoe shoe = value.getShoeList()[index];

                // Return a ShoeTile widget, passing the shoe and onTap action
                return ShoeTile(
                  shoe: shoe, // Shoe data passed to the tile
                  onTap: () =>
                      addShoeToCart(shoe), // Add shoe to cart when tapped
                );
              },
            ),
          ),

          // Divider line at the bottom of the shoe list
          const Padding(
            padding: EdgeInsets.only(
              top: 25.0,
              left: 25,
              right: 25,
            ),
            child: Divider(
              color: Colors.white, // Color of the divider line
            ),
          ),
        ],
      ),
    );
  }
}
