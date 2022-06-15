import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/cart_screen.dart';
import '../widgets/product_grid.dart';
import '../widgets/badge.dart';
import '../providers/cart.dart';

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          Consumer<Cart>(
            builder: (context, value, child) {
              return Badge(
                child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                  CartScreen.routeName,
                  
                );
              },
            ),
            color: Colors.yellow,
                value: value.jumlah.toString(),
              );
            },
          ),
        ],
      ),
      body: ProductGrid(),
    );
  }
}