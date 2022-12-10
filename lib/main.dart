import 'package:flutter/material.dart';
import 'package:pix_flutter/pix_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shopping_app/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// PAGES

import 'package:shopping_app/pages/home_page.dart';
import 'package:shopping_app/pages/products_page.dart';
import 'package:shopping_app/pages/cart_page.dart';
import 'package:shopping_app/pages/payment_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://cfwyyykjmfwifvmdxhcq.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNmd3l5eWtqbWZ3aWZ2bWR4aGNxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzAwNjg5MzIsImV4cCI6MTk4NTY0NDkzMn0.ILXJzp7hIN533Z-hB5xSQYX4dAG5nNkhpccsTrs2_nA',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CACC Shopping App',
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const HomePage(),
        '/products': (_) => const AccountPage(),
        '/carr': (_) => const LoginPage(),
      },
    );
  }
}

/* class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CACC Shopping App',
      home: ShoppingCart(),
    );
  }
}

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  PixFlutter pixFlutter = PixFlutter(
      payload: Payload(
    pixKey: '30c120bb-4c50-420d-b4a5-cc9f5e255e2f',
    merchantName: 'Eduardo',
    merchantCity: 'Boa Vista',
    amount: '0.01',
    txid: 'c8BT9WQRdG7bYKr36DCS82ZdK',
    isUniquePayment: true,
  ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CACC Shopping App'),
      ),
      body: Center(
        heightFactor: 2,
        child: QrImage(
          data: pixFlutter.getQRCode(),
          version: QrVersions.auto,
          size: 200,
        ),
      ),
    );
  }
} */
