import 'package:bags_shop/products_pages/outifits.dart';
import 'package:bags_shop/products_pages/sneakers.dart';
import 'package:bags_shop/widget/carte_publicite.dart';
import 'package:bags_shop/widget/search_fie;d.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../categories.dart';
import '../item_card.dart';

import '../models/products.dart';
import '../product_details/components/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController = TabController(
    length: 5,
    vsync: this,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          card_pub(),
          SizedBox(height: 20),
          // TabBar
          TabBar(
            padding: EdgeInsets.only(left: 1),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.blue,
            indicatorWeight: 5,
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.black,
            labelStyle: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(text: 'Sneakers'),
              Tab(text: 'Outfit'),
              Tab(text: 'T-shirts'),
              Tab(text: 'Sport Wear'),
              Tab(text: 'Others'),
            ],
          ),
          SizedBox(height: 3),
          // TabBarView to display different content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: TabBarView(
                controller: _tabController,
                children: [
                  // Content for Sneakers Tab
                  sneakers(products: products),
                  // Content for Outfit Tab (you can replace with your own content)
                  outfits(products: products),
                  // Content for T-shirts Tab
                  Center(child: Text('T-shirts content')),
                  // Content for Sport Wear Tab
                  Center(child: Text('Sport Wear content')),
                  // Content for Others Tab
                  Center(child: Text('Others content')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
