// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../WIDGET/Homepage.dart';
import '../data/product.dart';

class Homepage extends StatelessWidget {

  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black12,
        child: const Icon(
          Icons.home,
        ),
        onPressed: () {},
      ),
      appBar: AppBar(
          actions: [
            const Icon(
              Icons.search,
              color: Colors.black,
              size: 20,
            ),
          ],
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          title: const Text(
            "Welcome",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30,
            ),
          )),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Txt(
              product: product[index],
            );
          },
          itemCount: product.length),
    );
  }
}