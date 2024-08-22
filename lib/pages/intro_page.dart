import 'package:flutter/material.dart';
// Import the HomePage widget
import '../pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background color of the entire page
      backgroundColor: Colors.grey[300],

      // Center the content on the page
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            // Vertically center the children within the column
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo image at the top of the page
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/nike.png', // Path to the logo image
                  height: 240, // Set the height of the logo
                ),
              ),

              // Add some vertical space between the logo and the title
              const SizedBox(
                height: 48,
              ),

              // Main title text
              const Text(
                'Just Do It', // Displayed text
                style: TextStyle(
                  fontWeight: FontWeight.bold, // Bold font weight
                  fontSize: 20, // Font size
                ),
              ),

              // Add more vertical space between the title and the subtitle
              const SizedBox(
                height: 48,
              ),

              // Subtitle text
              const Text(
                'Brand new sneakers and custom kicks made with premium quality', // Subtitle text
                style: TextStyle(
                  fontSize: 16, // Font size
                  color: Colors.grey, // Text color
                ),
                textAlign: TextAlign.center, // Center the text
              ),

              // Add more vertical space between the subtitle and the button
              const SizedBox(
                height: 48,
              ),

              // "Shop Now" button
              GestureDetector(
                // Navigate to HomePage when the button is tapped
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ),
                child: Container(
                  // Style the button with a dark background and rounded corners
                  decoration: BoxDecoration(
                    color: Colors.grey[900], // Button background color
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  padding:
                      const EdgeInsets.all(25), // Padding inside the button
                  child: const Center(
                    // Button text
                    child: Text(
                      'Shop Now', // Text displayed on the button
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontWeight: FontWeight.bold, // Bold font weight
                        fontSize: 16, // Font size
                      ),
                    ),
                  ),
                ),
              ),

              // Add final vertical space at the bottom of the page
              const SizedBox(
                height: 48,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
