import 'package:flutter/material.dart';
import 'package:flutter_2_3/pages/account.dart';
import 'package:flutter_2_3/pages/basket.dart';
import 'package:flutter_2_3/pages/home.dart';
import 'package:flutter_2_3/pages/favourites.dart';
import 'package:flutter_2_3/pages/orders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/orders': (context) => const OrdersScreen(),
        '/favourites': (context) => const FavouritesScreen(),
        '/basket': (context) => const BasketScreen(),
        '/account': (context) => const AccountScreen(),
      },
    );
  }
}