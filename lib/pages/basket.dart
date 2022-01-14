import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        toolbarHeight: 50.0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('мои промокоды', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            children: const [
              Icon(
                Icons.shopping_basket,
                size: 200,
                color: Colors.grey,
              ),
              Text(
                'Корзина',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
