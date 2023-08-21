// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';


import '../WIDGET/PRODUCT WIDGET.dart';
import '../data/product.dart';


// ignore: must_be_immutable
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
          body: 
          SafeArea(
          child: GridView.builder(
            itemCount: product.length,
            itemBuilder: (BuildContext context, int index) {
              return Txt(product: product[index]);
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              
            ),
          ),
        ),

       
         
    );
  }
}

