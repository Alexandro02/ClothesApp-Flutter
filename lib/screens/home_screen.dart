// ignore_for_file: library_private_types_in_public_api

import 'package:navbar_app/screens/custom_screen.dart';
import 'package:navbar_app/widgets/button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 100),
        Image(
          image: NetworkImage(
              "https://static.vecteezy.com/system/resources/previews/008/847/318/non_2x/isolated-black-t-shirt-front-free-png.png"),
        ),
        SizedBox(height: 35),
        Text(
          "Buy our T-shirts",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 25),
        Button(text: "Without image", pageToNav: CustomScreen()),
        SizedBox(height: 25),
        Button(text: "With image", pageToNav: CustomScreen()),
        SizedBox(height: 25),
        Button(text: "Custom image", pageToNav: CustomScreen())
      ],
    );
  }
}
