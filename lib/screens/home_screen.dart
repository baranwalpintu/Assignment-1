import 'package:assignment/screens/pages/home_page.dart';
import 'package:assignment/screens/pages/product_page.dart';
import 'package:assignment/screens/pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ShopEasy", 
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          elevation: 4,
        ),
        body: Column(
          children: [
            Material(
              color: Colors.white,
              elevation: 2,
              child: const TabBar(
                indicatorColor: Colors.deepPurple,
                labelColor: Colors.deepPurple,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.w600),
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home"),
                  Tab(icon: Icon(Icons.list_alt), text: "Products"),
                  Tab(icon: Icon(Icons.person), text: "Profile"),
                ],
              ),
            ),

          
            Expanded(
              child: Container(
                color: Colors.grey[100],
                child: const TabBarView(
                  children: [
                    // Home Tab
                    HomePage(),

                    // Products Tab
                    ProductPage(),

                    // Profile Tab
                    ProfilePage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
