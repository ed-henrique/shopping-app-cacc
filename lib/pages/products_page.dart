import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  late final Stream<List<dynamic>> _productStream;

  @override
  void initState() {
    super.initState();
    _productStream = supabase.from('products').stream(primaryKey: ['id']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text(
            'Produtos',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )),
        body: StreamBuilder<List<dynamic>>(
          stream: _productStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final products = snapshot.data!;
              return Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            final product = products[index];
                            return Row(
                              children: [
                                Container(
                                  width: 300,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 5,
                                      color: Colors.black,
                                    ),
                                  ),
                                  margin: const EdgeInsets.all(20),
                                  child: Image.network(
                                    product['href'],
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      product['name'].toUpperCase(),
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "R\$ ${product['price'].toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: const Icon(Icons.add))
                                  ],
                                ),
                              ],
                            );
                          }))
                ],
              );
            }
            return const Text('Erro');
          },
        ));
  }
}
