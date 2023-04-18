import 'package:flutter/material.dart';
import 'package:store_app/view/widgets/custom_button.dart';
import 'package:store_app/view/widgets/custom_text_field.dart';

class UpdateProductScreen extends StatelessWidget {
  const UpdateProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("update product"),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CustomTextField(
              label: "Product Name",
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              label: "Product Description",
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              label: "Product Price",
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
              label: "Product Image",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              textTitle: "Update",
              pressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
