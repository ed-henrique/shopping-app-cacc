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
        height: MediaQuery.of(context).size.height * 0.75,
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
            : ListView.separated(
                itemCount: controller.products.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return CartProductCard(
                    controller: controller,
                    product: controller.products.keys.toList()[index],
                    quantity: controller.products.values.toList()[index],
                    index: index,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 1,
                    indent: 20,
                    endIndent: 20,
                    color: Colors.amberAccent,
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
        horizontal: 20,
        vertical: 20,
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
              product.name.toUpperCase(),
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              controller.removeProduct(product);
            },
            iconSize: 40,
            highlightColor: Colors.red,
            icon: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              quantity.toString(),
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              controller.addProduct(product);
            },
            iconSize: 40,
            highlightColor: Colors.green,
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
