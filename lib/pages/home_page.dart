import 'package:flutter/material.dart';
import 'package:ecommerce_shop/components/bottom_nav_bar.dart';
import 'package:ecommerce_shop/pages/cart_page.dart';
import 'package:ecommerce_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // this method will update our selected index
  // when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // shop page
    const ShopPage(),

    // Cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              // opens a drawer if any
              Scaffold.of(context).openDrawer();
            },
            icon: const Padding(
              padding:  EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // logo
            // DrawerHeader(
              // child: Image.asset(
              //   "lib/images/nikes_logo-removebg-preview.png",
              //   color: Colors.white,
              // ),
            // ),

            Column(
              children: [
               Container(
              height: 200,
              padding: const EdgeInsets.only(top: 25),
              child: Center(
                child: Image.asset(
                "lib/images/nikes_logo-removebg-preview.png",
                color: Colors.white,
              ),
              ),
            ),

            //  divider
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Divider(
                color: Colors.grey[800],
              ),
            ),

            // other pages

            // Home
           const Padding(
             padding:  EdgeInsets.only(left: 25.0),
             child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
           ),


            // About
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  "About",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
 
              ],
            ),

            // Logout
           const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),


            
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
