import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(child: Column(
          children: const [
            Icon(
              Icons.assignment_outlined,
              size: 200,
              color: Colors.grey,
            ),
            Text(
              'Мои заказы',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
