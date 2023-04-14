import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              http.Response response = await http.post(
                Uri.parse('https://fakestoreapi.com/products'),
                body: {
                  'title': 'test',
                  'price': 13.5,
                  'description': ' lorem ipsum set',
                  'image': 'https://i.pravatar.cc',
                  'category': 'electronic',
                },
              );
              print(response.body);
            },
            child: const Text(
              "Post",
            )),
      ),
    );
  }
}
