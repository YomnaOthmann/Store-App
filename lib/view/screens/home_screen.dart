import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/view/widgets/product_card.dart';

import '../../models/product_model.dart';
import '../../services/get_all_product_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "New Trend",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartPlus,
              size: 25,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 16.0,
          end: 16.0,
          top: 100,
        ),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductsService().getAllProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> products = [];
              return GridView.builder(
                clipBehavior: Clip.none,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 90,
                ),
                itemBuilder: (context, index) {
                  ProductCard(model: products[index]);
                },
                itemCount: products.length,
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
