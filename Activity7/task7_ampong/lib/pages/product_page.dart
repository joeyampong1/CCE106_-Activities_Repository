import 'package:flutter/material.dart';

import '../models/product_model.dart';
import '../data/product_data.dart';
import '../data/cart_data.dart';
import '../widgets/product_card.dart';
import '../widgets/category_button.dart';
import 'cart_page.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int selectedIndex = 0;
  int currentNavIndex = 0;

  Set<Product> favorites = {};

  List<Product> get filteredProducts {
    if (selectedIndex == 1) {
      return products.where((p) => p.category == "Jackets").toList();
    }
    if (selectedIndex == 2) {
      return products.where((p) => p.category == "Sneakers").toList();
    }
    return products;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("E-Commerce Shop"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: [
          // Cart Icon with Badge
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartPage(),
                    ),
                  );
                },
              ),
              if (CartData.itemCount > 0)
                Positioned(
                  right: 4,
                  top: 4,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '${CartData.itemCount}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: currentNavIndex == 0
          ? buildHome()
          : currentNavIndex == 1
              ? buildFavorites()
              : const CartPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentNavIndex,
        onTap: (index) {
          setState(() {
            currentNavIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
        ],
      ),
    );
  }

  Widget buildHome() {
    return Column(
      children: [
        // Category Buttons
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CategoryButton(
                title: "All",
                isSelected: selectedIndex == 0,
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
              ),
              CategoryButton(
                title: "Jackets",
                isSelected: selectedIndex == 1,
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
              ),
              CategoryButton(
                title: "Sneakers",
                isSelected: selectedIndex == 2,
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
              ),
            ],
          ),
        ),
        // Product Grid
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: filteredProducts.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.79, 
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              Product product = filteredProducts[index];
              return ProductCard(
                product: product,
                isFavorite: favorites.contains(product),
                onFavorite: () {
                  setState(() {
                    if (favorites.contains(product)) {
                      favorites.remove(product);
                    } else {
                      favorites.add(product);
                    }
                  });
                },
                onAddToCart: () {
                  setState(() {
                    CartData.addProduct(product);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${product.name} added to cart'),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget buildFavorites() {
    if (favorites.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 80,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              'No favorites yet',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Add some products to your favorites',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: favorites.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.68, // <-- Same sa Home
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        Product product = favorites.elementAt(index);
        return ProductCard(
          product: product,
          isFavorite: true,
          onFavorite: () {
            setState(() {
              favorites.remove(product);
            });
          },
          onAddToCart: () {
            setState(() {
              CartData.addProduct(product);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${product.name} added to cart'),
                  duration: const Duration(seconds: 1),
                ),
              );
            });
          },
        );
      },
    );
  }
}