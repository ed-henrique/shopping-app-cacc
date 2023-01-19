import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/cart_controller.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:pix_flutter/pix_flutter.dart';

class OrderDialog extends StatelessWidget {
  final CartController controller = Get.find();

  OrderDialog({super.key});

  dynamic getQRCode(amount) {
    final pix = PixFlutter(
      payload: Payload(
        pixKey: 'edu.hen.fm@gmail.com',
        merchantName: 'CACC',
        merchantCity: 'Boa Vista',
        txid: '***',
        amount: amount.toString(),
      ),
    );

    return pix.getQRCode();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        onPressed: () => showDialog(
          context: context,
          builder: (BuildContext context) => Dialog(
            child: Obx(
              () => SizedBox(
                width: 500,
                height: 500,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Read the following QR Code',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        (controller.products.isEmpty)
                            ? Container()
                            : QrImage(
                                data: getQRCode(controller.total),
                                version: QrVersions.auto,
                                size: 250,
                              ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            controller.removeAllProducts();
                          },
                          child: const Text('Close'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        child: const Text(
          "Finish Order",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
