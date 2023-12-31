import 'package:app/components/my_button.dart';
import 'package:flutter/material.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //icon
      Icon(
        Icons.shopping_bag,
        size: 70,
      color: Theme.of(context).colorScheme.inversePrimary,
      ),
      const SizedBox(height: 25),
      //title
      const Text(
        'WatchWorks',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        ),
      const SizedBox(height: 10),

        //subtitle
        Text("Premium Quality Products",
        style: TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        ),

      const SizedBox(height: 20),

        //button
MyButton(
  onTap:() => Navigator.pushNamed(context, '/shop_page'),
   child:const Icon(
  Icons.arrow_forward
),)
      ],
        ),
      ),
    );
  }
}