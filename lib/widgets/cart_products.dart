import 'package:get/get.dart';
import '../models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_cacc/controllers/cart_controller.dart';

class CartProducts extends StatelessWidget {
  final CartController controller = Get.find();

  CartProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 600,
        child: (controller.products.isEmpty)
            ? const Center(
                child: Text(
                  'No Products In Cart :(',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return CartProductCard(
                    controller: controller,
                    product: controller.products.keys.toList()[index],
                    quantity: controller.products.values.toList()[index],
                    index: index,
                  );
                },
              ),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;

  const CartProductCard({
    super.key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
              product.imageUrl,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              product.name,
            ),
          ),
          IconButton(
            onPressed: () {
              controller.removeProduct(product);
            },
            icon: const Icon(Icons.remove_circle),
          ),
          Text(
            quantity.toString(),
          ),
          IconButton(
            onPressed: () {
              controller.addProduct(product);
            },
            icon: const Icon(Icons.add_circle),
          ),
        ],
      ),
    );
  }
}
