import 'package:app/components/my_list_title.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//drawer header logo
        Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Icon(
                  Icons.shopping_bag,
                  size: 70,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //shop title
            MyListTile(
              text: 'Shop',
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),
            //cart tile
            MyListTile(
              text: 'cart',
              icon: Icons.shopping_cart,
              onTap: () {
                //pop drawer first
                Navigator.pop(context);
                //go to cart page

                Navigator.pushNamed(context, '/cart_page');
              },
            ),
          ],
        ),
        //exit shop
        Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: MyListTile(
            text: 'Exit',
            icon: Icons.exit_to_app,
            onTap: () => Navigator.pushNamedAndRemoveUntil(
                context, '/intropage', 
                (route) => false),
          ),
        ),
      ]),
    );
  }
}
