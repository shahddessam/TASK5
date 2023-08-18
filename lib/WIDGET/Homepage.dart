

// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last

import 'dart:js_interop';

import 'package:flutter/material.dart';

import '../PAGES/page2.dart';
import '../data/product.dart';

class Txt extends StatefulWidget {
  final Product product;

  const Txt({
    super.key,
    required this.product,
  });

  @override
  State<Txt> createState() => _TxtState();
}

class _TxtState extends State<Txt> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey),
                    ),
                    Positioned(
                      right: 60,
                      top: 40,
                      child: Container(
                        child: Text(
                          widget.product.price.toString(),
                          style: const TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 50,
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        child: Text(
                          widget.product.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 25,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        height: 90,
                        width: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Image.asset(
                            widget.product.img,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          if (isDefinedAndNotNull) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const AlertDialog(
                                    content: Text("Soldout"),
                                  );
                                });
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Page2(),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          "click to view",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.black12),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}