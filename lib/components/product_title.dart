import 'package:app/models/product.dart';
import 'package:app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key,
   required this.product});

//add to cart 
void addToCart(BuildContext context){
  showDialog(
    context: context,
    builder: (context)=> AlertDialog(
    content: const Text("Add this item to your cart?"),actions: [

      //cancel button
      MaterialButton(onPressed: () => Navigator.pop(context),
      child: const Text("cancel"),
      ),

      //yes button
      MaterialButton(onPressed: (){

        Navigator.pop(context);
        context.read<Shop>().addTOCart(product);
      },
      child: const Text("Yes"),
      ),
    ],
  ),);
}
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //product image
      AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).colorScheme.secondary,
          ),
          width: double.infinity,padding: const EdgeInsets.all(25),
child: Image(image: AssetImage(product.imagepath)),
),
),
        
      
      const SizedBox(height: 25,),
          //product name
          Column(
            children: [
              Text(product.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              const SizedBox(height: 10),
              //product description
              Text(product.description,    
                    style:TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ],
          ),
                        const SizedBox(height: 20),

          //product price+add to cart button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$' +product.price.toStringAsFixed(2),
              style: const TextStyle(fontWeight: FontWeight.bold)),
                    Container(
                      decoration: BoxDecoration(
              color:Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(onPressed: () => addToCart(context),
                       icon: const Icon(Icons.add)),
                    ),
            ],
          ),
        ],
      )
    ) ;   
    
  }
}