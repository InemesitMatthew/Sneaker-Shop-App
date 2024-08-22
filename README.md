# Sneaker Shop App

## Overview

The **Sneaker Shop App** is a modern, feature-rich mobile application built using Flutter. It allows users to browse and purchase a curated selection of premium sneakers. With a focus on sleek design and intuitive user experience, this app provides a seamless shopping experience, from browsing through the catalog to managing items in the cart.

## Features

### 1. **Browse Sneakers**
   - Users can explore a selection of sneakers, each with detailed information including images, descriptions, and prices.
   - The `ShopPage` showcases "Hot Picks," giving users quick access to trending sneakers.

### 2. **Search Functionality**
   - A built-in search bar on the `ShopPage` allows users to quickly find their desired sneakers.

### 3. **Shopping Cart Management**
   - Users can easily add sneakers to their cart from the `ShopPage` and view their selected items in the `CartPage`.
   - The cart provides a summary of all selected items, with the ability to remove items as needed.

### 4. **User-Friendly Navigation**
   - The app features a custom bottom navigation bar, built using the `google_nav_bar` package, allowing users to switch between the shop and cart views effortlessly.

### 5. **Interactive UI Components**
   - The app includes engaging UI elements like image tiles, custom buttons, and smooth transitions to enhance the overall user experience.

### 6. **State Management**
   - The app leverages the `Provider` package for efficient state management, ensuring that changes in the cart are instantly reflected across the app.

### 7. **Introductory Landing Page**
   - The app welcomes users with an introductory page featuring a bold slogan and a "Shop Now" button, leading directly to the shopping experience.

## Technical Details

### **Technologies Used**
- **Flutter**: The app is built entirely with Flutter, ensuring cross-platform compatibility and a high-performance user interface.
- **Provider**: Used for state management to keep track of the user's cart and shoe catalog.
- **google_nav_bar**: A package utilized for creating a customizable bottom navigation bar.

### **File Structure**
- **`main.dart`**: Initializes the app and sets up state management using `ChangeNotifierProvider`.
- **`intro_page.dart`**: The landing page that introduces users to the app.
- **`home_page.dart`**: Hosts the main navigation structure, linking to the shop and cart pages.
- **`shop_page.dart`**: Displays the list of available sneakers and includes the search functionality.
- **`cart_page.dart`**: Manages and displays items added to the user's cart.
- **`cart.dart`**: Contains the `Cart` model, which manages the list of shoes available for purchase and those added to the cart.
- **`shoe.dart`**: Defines the `Shoe` model, encapsulating details like name, price, description, and image path.
- **`shoe_tile.dart`**: A custom widget for displaying each shoe's details in a visually appealing tile.
- **`cart_item.dart`**: A widget used within the `CartPage` to display each shoe in the user's cart, with functionality to remove items.

### **Installation**
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/InemesitMatthew/Sneaker-Shop-App.git
   cd sneaker-shop-app
   ```

2. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the App**:
   ```bash
   flutter run
   ```

### **Future Enhancements**
- **User Authentication**: Implement user sign-in/sign-up to allow personalized experiences.
- **Wishlist Feature**: Add a wishlist functionality so users can save items for later.
- **Enhanced Search**: Improve search capabilities with filtering and sorting options.
- **Payment Integration**: Enable in-app purchases with payment gateway integration.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

This app was made using a yt video.... credit to Mitch Koko