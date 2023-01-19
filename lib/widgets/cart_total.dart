import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_cacc/controllers/cart_controller.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();

  CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => (controller.products.isEmpty)
          ? const SizedBox(
              height: 49,
            )
          : Center(
              child: Text(
                'TOTAL: R\$ ${controller.total}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
    );
  }
}
