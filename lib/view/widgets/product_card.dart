import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.isFav,
  });
  final String image;
  final String title;
  final double price;
  final bool isFav;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Text(
            "Handbag LV",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              const Text(
                "\$245",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.heart,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
