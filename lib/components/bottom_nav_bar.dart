import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// Custom Bottom Navigation Bar widget
// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  // Callback function that will be triggered when the user taps a tab
  void Function(int)? onTabChange;

  // Constructor for the MyBottomNavBar widget
  MyBottomNavBar({
    super.key,
    required this.onTabChange, // The onTabChange callback must be provided
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Add horizontal padding around the navigation bar
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GNav(
        // Color of the icons when they are not selected
        color: Colors.grey[400],
        // Color of the icons when they are selected
        activeColor: Colors.grey.shade700,
        // Border around the active tab
        tabActiveBorder: Border.all(color: Colors.white),
        // Background color of the active tab
        tabBackgroundColor: Colors.grey.shade100,
        // Align tabs to the center
        mainAxisAlignment: MainAxisAlignment.center,
        // Border radius for tabs to give rounded corners
        tabBorderRadius: 16,
        // Space between icon and text within each tab
        gap: 8,
        // This line calls the onTabChange callback function, passing the index (value)
        // of the selected tab. The "!" ensures that onTabChange is not null when called.
        onTabChange: (value) => onTabChange!(value),
        // Define the tabs in the navigation bar
        tabs: const [
          GButton(
            icon: Icons.home, // Icon for the first tab
            text: 'Shop', // Text for the first tab
          ),
          GButton(
            icon: Icons.shopping_bag_rounded, // Icon for the second tab
            text: 'Cart', // Text for the second tab
          )
        ],
      ),
    );
  }
}
