import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/view/screens/home_screen.dart';
import 'package:store_app/view/widgets/product_card.dart';

import 'constants/routes.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.home: (context) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
        foregroundColor: Colors.black,
        centerTitle: true,
      )),
      initialRoute: Routes.home,
    );
  }
}
