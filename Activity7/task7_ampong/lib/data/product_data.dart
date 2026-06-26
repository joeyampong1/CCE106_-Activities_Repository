import '../models/product_model.dart'; 

final List<Product> products = [
  Product(
    name: "Nike Air Max 200",
    price: 180.0, 
    status: "Trending Now",
    image: "assets/shoes1.png",
    category: "Sneakers",
  ),
  Product(
    name: "Nike Originals",
    price: 120.0, 
    status: "Out of Stock",
    image: "assets/shoes2.png",
    category: "Sneakers",
  ),
  Product(
    name: "Hard Jacket",
    price: 90.0, 
    status: "Trending Now",
    image: "assets/jacket1.png",
    category: "Jackets",
  ),
  // ========== NEW PRODUCTS ==========
  Product(
    name: "Adidas Ultraboost",
    price: 200.0,
    status: "Trending Now",
    image: "assets/shoes3.png", 
    category: "Sneakers",
  ),
  Product(
    name: "Puma Classic",
    price: 85.0,
    status: "New Arrival",
    image: "assets/shoes4.png",
    category: "Sneakers",
  ),
  Product(
    name: "Leather Jacket",
    price: 150.0,
    status: "Trending Now",
    image: "assets/jacket2.png",
    category: "Jackets",
  ),
];