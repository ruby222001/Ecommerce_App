import 'package:app/components/my_drawer.dart';
import 'package:flutter/material.dart';
class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(child: Text('Shop Page')),
      ),
      drawer: const MyDrawer(

      ),
            backgroundColor: Theme.of(context).colorScheme.background,

    );
  }
}