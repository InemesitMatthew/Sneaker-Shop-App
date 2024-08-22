import 'package:flutter/material.dart';
import '../models/shoe.dart';

// A widget to display a tile representing a shoe with its details.
// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  // The shoe object containing information like image, description, name, and price.
  Shoe shoe;

  // Callback function to handle tap events on this tile.
  void Function()? onTap;

  // Constructor for the ShoeTile widget, requires a shoe object and an onTap callback.
  ShoeTile({
    super.key,
    required this.shoe, // The shoe object that this tile represents
    required this.onTap, // The function to call when the tile is tapped
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Add padding at the bottom of the tile for spacing between tiles.
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Container(
        // Margin to add space on the left side of the tile
        margin: const EdgeInsets.only(left: 25),
        width: 280, // Fixed width for the tile
        decoration: BoxDecoration(
          // Set background color and rounded corners for the tile.
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // Space out the children vertically
          children: [
            // Display the shoe image.
            ClipRRect(
              // Rounded corners for the image
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                  shoe.imagePath), // Display the image from the shoe object
            ),

            // Display the shoe description.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                shoe.description, // Show the description text from the shoe object
                style: TextStyle(
                  color: Colors.grey[600], // Text color for the description
                ),
              ),
            ),

            // Display the shoe name, price, and an add button.
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Align the elements across the row
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Align elements at the start of the row
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Align the name and price to the start
                    children: [
                      // Display the shoe name in bold and larger font size.
                      Text(
                        shoe.name, // Show the shoe name from the shoe object
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      const SizedBox(
                        height:
                            5, // Add a small space between the name and price
                      ),

                      // Display the price of the shoe.
                      Text(
                        '\$${shoe.price}', // Show the price of the shoe
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  // A button to add the shoe, triggering the onTap callback when tapped.
                  GestureDetector(
                    // When the button is tapped, the onTap function is triggered
                    onTap: onTap,
                    child: Container(
                      padding: const EdgeInsets.all(
                          20), // Padding inside the add button
                      decoration: const BoxDecoration(
                        color: Colors.black, // Background color for the button
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                      ),
                      child: const Icon(
                        Icons.add, // Add icon inside the button
                        color: Colors.white, // Icon color
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
