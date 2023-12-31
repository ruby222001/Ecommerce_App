import 'package:app/components/my_drawer.dart';
import 'package:app/components/product_title.dart';
import 'package:app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    //access product in shop
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text('Watch Box')),
        actions: [
          IconButton(onPressed: ()=> Navigator.pushNamed(context, '/cart_page'), icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      drawer: const MyDrawer(),
            backgroundColor: Theme.of(context).colorScheme.background,

body: ListView(
  children: [
    Center(
      
      child: Text('Pick from a selected list of products',style: TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      ),
    ),
          const SizedBox(height: 20),

    SizedBox(
      height: 550,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        padding: const EdgeInsets.all(15),
        itemBuilder: (context, index){
        //get each individual product from shop
        final product = products[index];
        //return as product tile Ui
        return MyProductTile(product: product);
      }),
    ),
  ],
),
    );
  }
}