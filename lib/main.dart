import 'package:flutter/material.dart';
import './providers/orders.dart';
import './screens/cart_screen.dart';
import './screens/product_details_screen.dart';
import './screens/products_overview_screen.dart';
import './providers/products.dart';
import 'package:provider/provider.dart';
import './providers/cart.dart';
import './screens/orders_screen.dart';
import './screens/user_product_screen.dart';
import './screens/edit_product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
        ChangeNotifierProvider.value(
        value: Products(),
    ),
      ChangeNotifierProvider.value(
        value: Cart(),
      ),
      ChangeNotifierProvider.value(value: Orders(),),
    ],
    child: MaterialApp(
     title: 'Flutter Demo',
     theme: ThemeData(
     primarySwatch: Colors.purple,
     accentColor: Colors.deepOrange,
     fontFamily: 'Lato',
     ),
     home: ProductOverviewScreen(),
     routes: {
     ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
       CartScreen.routeName: (ctx) => CartScreen(),
       OrdersScreen.routeName: (ctx) => OrdersScreen(),
       UserProductScreen.routeName: (ctx) => UserProductScreen(),
       EditProductScreen.routeName: (ctx) => EditProductScreen(),
     },
    ),
    );
  }
}

