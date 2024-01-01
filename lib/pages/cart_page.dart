import 'package:app/components/my_button.dart';
import 'package:app/models/product.dart';
import 'package:app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});


void removeItemfromCart(BuildContext context, Product product){
  showDialog(
    context: context,
    builder: (context)=> AlertDialog(
    content: const Text("Remove this item from your cart?"),actions: [

      //cancel button
      MaterialButton(onPressed: () => Navigator.pop(context),
      child: const Text("cancel"),
      ),

      //yes button
      MaterialButton(onPressed: (){

        Navigator.pop(context);
        context.read<Shop>().removeFromCart(product);
      },
      child: const Text("Yes"),
      ),
    ],
  ),);
}

//paybutton
void payButtonpressed(BuildContext context){
  showDialog(context: context, builder: (context) => const AlertDialog(
    content: Text("Pay Now! "),
  ));

}
  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Cart page')),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,

      body: Column(
        children: [
          //cart list

          Expanded(child:cart.isEmpty ? const Center(child: Text("Your cart is empty")): ListView.builder(
            itemCount: cart.length,
            itemBuilder: (context,index){
            //get individual item in cart
            final item = cart[index];

            return ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Image.asset(item.imagepath,)),
title: Text(item.name),
subtitle: Text(item.price.toStringAsFixed(2)),
trailing: IconButton(icon: const Icon(Icons.remove),
onPressed: () => removeItemfromCart(context,item),
)
            );
          }),
          ),

          Padding(
            padding: const EdgeInsets.all(50),
            child: MyButton(onTap: ()=>payButtonpressed(context), child: const Text('Pay Now',
            style: TextStyle(fontWeight: FontWeight.bold),)),
          ),
        ],
      ),
    );
  }
}