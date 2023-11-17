import 'package:flutter/material.dart';
import 'package:slshop/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer header: logo
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              //shop title
              MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () {
                  Navigator.pop(context);

                  //go to the shop page
                  Navigator.pushNamed(context, '/shop_page');
                },
              ),

              //cart title
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                //pop the drawer first
                onTap: () {
                  Navigator.pop(context);

                  //go to the cart page
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),

          //exit ship title
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: MyListTile(
              text: "Logout",
              icon: Icons.logout,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/intro_page', (route) => false),
            ),
          ),
        ],
      ),
    );
  }
}
