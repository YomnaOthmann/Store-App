import 'package:flutter/material.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/view/widgets/custom_button.dart';
import 'package:store_app/view/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../models/product_model.dart';

class UpdateProductScreen extends StatefulWidget {
  UpdateProductScreen({
    super.key,
    this.productName,
    this.image,
    this.description,
    this.price,
  });
  String? productName, image, description;
  String? price;

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Product"),
        backgroundColor: Colors.transparent,
      ),
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Padding(
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
                    widget.productName = value;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  label: "Product Description",
                  onChanged: (value) {
                    widget.description = value;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  label: "Product Price",
                  onChanged: (value) {
                    widget.price = value;
                  },
                  type: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  label: "Product Image",
                  onChanged: (value) {
                    widget.image = value;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  textTitle: "Update",
                  pressed: () async {
                    setState(() {
                      isLoading = true;
                    });
                    try {
                      await updateProduct(product);
                      print("success");
                    } on Exception catch (e) {
                      print(e);
                    }

                    setState(() {
                      isLoading = false;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
      id: product.id,
      title: widget.productName ?? product.title,
      price: widget.price ?? product.price,
      desc: widget.description ?? product.description,
      image: widget.image ?? product.image,
      category: product.category,
    );
  }
}
