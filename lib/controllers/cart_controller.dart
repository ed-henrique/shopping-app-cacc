import 'package:get/get.dart';
import 'package:shopping_app_cacc/models/product_model.dart';

class CartController extends GetxController {
  var _products = {}.obs;

  void addProduct(Product product) {
    (_products.containsKey(product))
        ? _products[product]++
        : _products[product] = 1;
  }

  void removeProduct(Product product) {
    (_products.containsKey(product) && _products[product] == 1)
        ? _products.removeWhere((key, value) => key == product)
        : _products[product]--;
  }

  void removeAllProducts() {
    _products.clear();
  }

  get products => _products;
  get productSubTotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();
  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}
