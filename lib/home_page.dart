import 'package:flutter/material.dart';
import 'package:loja/catalog_item_widget.dart';
import 'package:loja/catalog_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CatalogViewModel>(context);
    // provider *entrega* uma instância do catalogviewmodel [lista de produtos] (e não cria uma, portanto deixando todas as telas que fazem o pedido com os mesmos dados)
    final products = vm.products;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          const Icon(Icons.card_travel),
        ],
      ),
      body: ListView.separated(
        itemCount: products.length,
        itemBuilder: (context, index) => CatalogItemWidget(
          product: products[index]
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}