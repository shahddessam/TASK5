// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
 
 
  const Page2({super.key,});

  @override
  State<Page2> createState() => _ScreenState();
}

class _ScreenState extends State<Page2> {
 
 

  void _incrementCounter() {
    setState(() {
    
 

    
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.black54,
        ) ,

        body:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    
                    onPressed:  _incrementCounter,
                     child: Text("increase price",
                     style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                     ),
                     ),

                  )
                  

                ],


              ),
            ],
          ),
        ),




    );
  }

 }