// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CustomScreen extends StatefulWidget {
  const CustomScreen({Key? key}) : super(key: key);

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
    return Scaffold(
      body: ListView.builder(
        itemCount: itemsOptions.length,
        itemBuilder: (context, index) {
          return RadioListTile(
            title: Text(itemsOptions[index]),
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
    );
  }
}
