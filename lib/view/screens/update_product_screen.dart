import 'package:flutter/material.dart';
import 'package:store_app/view/widgets/custom_button.dart';
import 'package:store_app/view/widgets/custom_text_field.dart';

class UpdateProductScreen extends StatelessWidget {
  UpdateProductScreen({
    super.key,
    this.productName,
    this.image,
    this.description,
    this.price,
  });
  String? productName, image, description;
  double? price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Product"),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              CustomTextField(
                label: "Product Name",
                onChanged: (value) {
                  productName = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                label: "Product Description",
                onChanged: (value) {
                  description = value;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                label: "Product Price",
                onChanged: (value) {
                  price = double.parse(value);
                },
                type: TextInputType.number,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                label: "Product Image",
                onChanged: (value) {
                  image = value;
                },
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                textTitle: "Update",
                pressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
