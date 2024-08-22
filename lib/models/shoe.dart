class Shoe {
  // The name of the shoe
  final String name;
  
  // The price of the shoe
  final String price;
  
  // The path to the image of the shoe
  final String imagePath;
  
  // A brief description of the shoe
  final String description;

  // Constructor to create a Shoe object with required properties
  Shoe({
    required this.name,        // Name of the shoe
    required this.price,       // Price of the shoe
    required this.description, // Description of the shoe
    required this.imagePath,   // Path to the shoe image
  });
}
