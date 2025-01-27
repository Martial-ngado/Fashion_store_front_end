import 'package:flutter/material.dart';
import '../item_card.dart';
import '../models/products.dart';
import '../product_details/components/detail_screen.dart';
import '../../constants.dart';

class sneakers extends StatelessWidget {
  final List<Product> products;

  const sneakers({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: kDefaultPaddin,
        crossAxisSpacing: kDefaultPaddin,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) => ItemCard(
        product: products[index],
        press: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              product: products[index],
            ),
          ),
        ),
      ),
    );
  }
}
