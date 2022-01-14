import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        toolbarHeight: 50.0,
        title: TextField(
          cursorColor: Colors.white,
          autofocus: false,
          decoration: InputDecoration(
              hintText: ' поиск в каталоге',
              hintStyle: TextStyle(color: Colors.grey[300],),
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(Icons.search, color: Colors.white,),
                color: Colors.green[700],
                onPressed: () {},
              )),
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ),
      drawer: _buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Center(
          child: Column(
            children: const [
              Icon(
                Icons.home,
                size: 200,
                color: Colors.grey,
              ),
              Text(
                'Домашняя страница',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.green[700]),
            child: Column(
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 50,
                    child: Image.asset('assets/avatar-icon.png'),
                  ),
                ),
                const Text(
                  'Никнейм',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.assignment_outlined),
            title: const Text('Мои заказы'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/orders');
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text('Корзина'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/basket');
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Избранное'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/favourites');
            },
          ),
          const Divider(),
          const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Text('Профиль'),
              )),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Мой аккаунт'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/account');
            },
          ),
        ],
      ),
    );
  }
}
