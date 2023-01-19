import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_cacc/controllers/cart_controller.dart';
import 'package:shopping_app_cacc/models/product_model.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: Product.products.length,
            itemBuilder: (BuildContext context, int index) {
              return CatalogProductCard(index: index);
            }));
  }
}

class CatalogProductCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;

  CatalogProductCard({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage(
                    Product.products[index].imageUrl,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Product.products[index].name.toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "R\$ ${Product.products[index].price.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text(
                    'Added to Cart!',
                    textAlign: TextAlign.center,
                  ),
                  duration: Duration(milliseconds: 500),
                );

                cartController.addProduct(Product.products[index]);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: const Icon(
                Icons.add_circle,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
