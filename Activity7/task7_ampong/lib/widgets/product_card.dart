import 'package:flutter/material.dart';
import '../models/product_model.dart';
import 'price_text.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final bool isFavorite;
  final VoidCallback onFavorite;
  final VoidCallback onAddToCart;

  const ProductCard({
    super.key,
    required this.product,
    required this.isFavorite,
    required this.onFavorite,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // IMAGE + FAVORITE
            Stack(
              children: [

                Container(
                  height: 105,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                Positioned(
                  top: 5,
                  right: 5,
                  child: GestureDetector(
                    onTap: onFavorite,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: Icon(
                        isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 4),

            Text(
              product.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 2),

            Text(
              product.status,
              style: TextStyle(
                color: product.status == "Out of Stock"
                    ? Colors.red
                    : Colors.green,
                fontSize: 11,
              ),
            ),

            const SizedBox(height: 2),

            PriceText(
              price: product.price,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),

            const SizedBox(height: 2),

            SizedBox(
              width: double.infinity,
              height: 36,
              child: ElevatedButton(
                onPressed: product.status == "Out of Stock"
                    ? null
                    : onAddToCart,
                style: ElevatedButton.styleFrom(
                  backgroundColor: product.status == "Out of Stock"
                      ? Colors.grey
                      : Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  product.status == "Out of Stock"
                      ? "Out of Stock"
                      : "Add to Cart",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}