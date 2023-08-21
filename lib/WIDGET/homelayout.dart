// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:listview/PAGES/HOMEPAGE.dart';
import 'package:listview/PAGES/SIGNUP.dart';
import '../PAGES/COUNTER.dart';
import '../PAGES/MY PROFILE.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  void getPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> screens = [
    const Homepage(),
    const Page2(
      input1: '200',
    ),
    const Profile(),
  ];

  Future<bool> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
      return true;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Welcome",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
        ],
        leading: IconButton(
          color: Colors.black,
          onPressed: () async {
            await signOut().then((value) {
              if (value) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const signup();
                }));
              }
            });
          },
          icon: const Icon(Icons.logout),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          getPage(index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_outlined),
            label: 'counter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          )
        ],
      ),
    );
  }
}
