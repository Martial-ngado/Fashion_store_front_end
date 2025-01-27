import 'package:flutter/material.dart';

class card_pub extends StatelessWidget {
  const card_pub({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
              height: MediaQuery.of(context).size.height * 0.20,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue.shade800,
                image: DecorationImage(image: AssetImage('assets/images/img_4.png',),fit: BoxFit.cover)

              ),

      ),
    );
  }
}
