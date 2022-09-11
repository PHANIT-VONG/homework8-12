import 'package:flutter/material.dart';
import 'package:homework8_12/models/product_model.dart';

class ItemCart extends StatelessWidget {
  final ProductModel product;
  const ItemCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      child: Row(
        children: [
          Container(
            width: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  product.imageUrl,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "\$ ${product.price}",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '${product.discount}% OFF',
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
