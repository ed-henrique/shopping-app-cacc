import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app_cacc/widgets/order_dialog.dart';
import '../widgets/cart_products.dart';
import '../widgets/cart_total.dart';
import 'package:shopping_app_cacc/controllers/cart_controller.dart';

class CartScreen extends StatelessWidget {
  final CartController controller = Get.find();

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Cart",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CartProducts(),
            Column(
              children: [
                CartTotal(),
                Obx(
                  () => (controller.products.isEmpty)
                      ? Container()
                      : OrderDialog(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
