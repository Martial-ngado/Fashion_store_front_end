import 'package:bags_shop/home_screen/home.dart';
import 'package:bags_shop/product_details/components/detail_screen.dart';
import 'package:bags_shop/widget/search_fie;d.dart';
import 'package:flutter/material.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0; // This variable will control the selected page
  final List<Widget> _pages = [
    HomeScreen(),
    SearchField()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex], // Display the selected page

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20.0,left: 20,right: 20.0), // Add horizontal padding
        child: Container(

          decoration: BoxDecoration(
            color: Colors.black, // Background color of the bottom navigation bar
            borderRadius: BorderRadius.circular(30), // Rounded corners
            // Optional shadow for floating effect
          ),
          child: SalomonBottomBar(
            currentIndex: _pageIndex,
            onTap: (value) {
              setState(() {
                _pageIndex = value; // Update the page index when a tab is selected
              });
            },
            items: [
              // Home Tab
              SalomonBottomBarItem(
                icon: Icon(Icons.home,color: Colors.white,),
                title: Text("Accueil"),
                selectedColor: Colors.blue,
              ),
              // Post Tab
              SalomonBottomBarItem(
                icon: Icon(Icons.search,color: Colors.white,),
                title: Text("Categoris"),
                unselectedColor: Colors.grey,
                selectedColor: Colors.pink,
              ),
              // Search Tab
              SalomonBottomBarItem(
                icon: Icon(Icons.shopping_cart_rounded,color: Colors.white,),
                title: Text("Cart"),
                unselectedColor: Colors.grey,
                selectedColor: Colors.orange,
              ),
              // Profile Tab
              SalomonBottomBarItem(
                icon: Icon(Icons.person,color: Colors.white,),
                title: Text("Profile"),
                unselectedColor: Colors.grey,
                selectedColor: Colors.teal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
