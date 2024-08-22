import 'package:flutter/material.dart';
// Import custom components and pages
import '../components/bottom_nav_bar.dart';
import '../pages/cart_page.dart';
import '../pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This variable keeps track of the currently selected
  // index in the bottom navigation bar
  int _selectedIndex = 0;

  // This method updates the selected index when a user
  // taps on a bottom navigation bar item
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // A list of pages to display based on the selected index
  final List<Widget> _pages = [
    // Shop page
    const ShopPage(),
    // Cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background color of the Scaffold
      backgroundColor: Colors.grey[300],

      // Bottom Navigation Bar to switch between pages
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index), // Handle tab changes
      ),

      // AppBar at the top of the screen
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Make the AppBar background transparent
        elevation: 0, // Remove shadow under the AppBar
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu, // Menu icon on the AppBar
                color: Colors.black, // Icon color
              ),
            ),
            onPressed: () {
              // Open the Drawer when the menu icon is pressed
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),

      // Drawer that slides in from the left side of the screen
      drawer: Drawer(
        backgroundColor: Colors.grey[900], // Background color of the Drawer
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Space out items in the Drawer
          children: [
            Column(
              children: [
                // Logo at the top of the Drawer
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/nike.png',
                    color: Colors.white, // Set the color of the logo image
                  ),
                ),

                // Divider line to separate sections in the Drawer
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800], // Color of the divider line
                  ),
                ),

                // Home page link in the Drawer
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home, // Home icon
                      color: Colors.white, // Icon color
                    ),
                    title: Text(
                      'H O M E', // Home text
                      style: TextStyle(
                        color: Colors.white, // Text color
                      ),
                    ),
                  ),
                ),

                // About page link in the Drawer
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.info, // Info icon
                      color: Colors.white, // Icon color
                    ),
                    title: Text(
                      'A B O U T', // About text
                      style: TextStyle(
                        color: Colors.white, // Text color
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Logout link at the bottom of the Drawer
            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(
                  Icons.logout, // Logout icon
                  color: Colors.white, // Icon color
                ),
                title: Text(
                  'L O G O U T', // Logout text
                  style: TextStyle(
                    color: Colors.white, // Text color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Display the current page based on the selected index
      body: _pages[_selectedIndex],
    );
  }
}
