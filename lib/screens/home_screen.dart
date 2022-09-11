import 'package:flutter/material.dart';
import 'package:homework8_12/models/product_model.dart';
import 'package:homework8_12/widgets/item_cart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Appbar
          Container(
            padding: const EdgeInsets.only(top: 30),
            height: 130.0,
            color: Colors.orange.shade500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.arrow_back, color: Colors.white),
                      SizedBox(width: 20),
                      Text(
                        'Products',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(
                        Icons.shopping_cart,
                        size: 30,
                        color: Colors.white,
                      ),
                      Positioned(
                        top: -10,
                        right: -5,
                        child: Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            '0',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // item list
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) {
                var data = ProductModel.productList[index];
                return ItemCart(product: data);
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.black,
                  thickness: 2,
                  height: 0,
                );
              },
              itemCount: ProductModel.productList.length,
            ),
          ),
        ],
      ),
    );
  }
}
