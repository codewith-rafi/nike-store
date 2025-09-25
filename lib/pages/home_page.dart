import 'package:flutter/material.dart';
import 'package:shoes_ecommerce/components/bottom_navigation.dart';
import 'package:shoes_ecommerce/pages/cart_page.dart';
import 'package:shoes_ecommerce/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // selected index
  int _selectedIndex = 0;

  // user selected index

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> pages = [ShopPage(), const CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu, color: Colors.black),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            Container(
              height: 180,
              color: Colors.grey[900],
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 36.0),
                  child: Image.asset(
                    'assets/logos/nike.png',
                    width: 100,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Divider(color: Colors.grey[800]),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/home'),
                    child: ListTile(
                      leading: Icon(Icons.home, color: Colors.white),
                      title: Text(
                        "Home",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/cart'),
                    child: ListTile(
                      leading: Icon(Icons.info, color: Colors.white),
                      title: Text(
                        "About",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/welcome'),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Text(
                    "Log Out",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: pages[_selectedIndex],
    );
  }
}
