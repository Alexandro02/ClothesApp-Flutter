// ignore_for_file: library_private_types_in_public_api, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:navbar_app/screens/home_screen.dart';
import 'package:navbar_app/screens/pickup_screen.dart';
import 'package:navbar_app/widgets/button.dart';

class CustomScreen extends StatefulWidget {
  final double totalCost;

  CustomScreen({super.key, required this.totalCost});

  @override
  _CustomScreenState createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  final List<String> itemsOptions = [
    'Slipknot',
    'The Weekend',
    'Taylor Swift',
    'Post Malone'
  ];
  String selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Customize your shirt",
          ),
          backgroundColor: Colors.teal,
        ),
        body: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10),
              itemCount: itemsOptions.length,
              itemBuilder: (context, index) {
                return RadioListTile(
                  title: Text(
                    itemsOptions[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  value: itemsOptions[index],
                  groupValue: selectedItem,
                  onChanged: (value) {
                    setState(() {
                      selectedItem = value!;
                    });
                  },
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                thickness: 3,
                color: Color.fromARGB(81, 158, 158, 158),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Subtotal: \$${widget.totalCost.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  buttonText: "Cancel",
                  buttonColor: Colors.red[400]!,
                  pageToNav: const HomeScreen(),
                  buttonSizeHeight: 40,
                  buttonSizeWidth: 150,
                ),
                Button(
                  buttonText: "Continue",
                  buttonColor: Colors.teal[400]!,
                  pageToNav: const PickupScreen(),
                  buttonSizeHeight: 40,
                  buttonSizeWidth: 150,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
