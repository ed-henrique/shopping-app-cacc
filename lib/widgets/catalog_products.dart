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
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
              Product.products[index].imageUrl,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              Product.products[index].name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child:
                Text("R\$ ${Product.products[index].price.toStringAsFixed(2)}"),
          ),
          IconButton(
              onPressed: () {
                cartController.addProduct(Product.products[index]);
              },
              icon: const Icon(
                Icons.add_circle,
              ))
        ],
      ),
    );
  }
}
