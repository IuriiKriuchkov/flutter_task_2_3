import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        toolbarHeight: 50.0,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.wifi_protected_setup_outlined),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(child: Column(
          children: const [
            Icon(
              Icons.star,
              size: 200,
              color: Colors.grey,
            ),
            Text(
              'Избранное',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
