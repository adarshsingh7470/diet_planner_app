import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int height;
  final int weight;
  final int age;
  final String calculate;
  final String Diet1;
  final String Diet2;
  final String Diet3;
  final String Diet4;
  final String Diet5;
  final String Diet6;
  final String img1;
  final String img2;
  final String img3;
  final String img4;
  final String img5;
  final String img6;

  ResultScreen({
    required this.height,
    required this.weight,
    required this.age,
    required this.calculate,
    required this.Diet1,
    required this.Diet2,
    required this.Diet3,
    required this.Diet4,
    required this.Diet5,
    required this.Diet6,
    required this.img1,
    required this.img2,
    required this.img3,
    required this.img4,
    required this.img5,
    required this.img6,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[200],
        elevation: 0.0,
        title: Text(
          calculate,
          style: TextStyle(fontSize: 26, color: Colors.white, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // Your list items here
          // Example:
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(25.0),
          //       color: Colors.greenAccent[100],
          //     ),
          //     width: 100,
          //     child: Padding(
          //       padding: const EdgeInsets.all(10.0),
          //       child: Text(
          //         Diet1,
          //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, fontStyle: FontStyle.italic, color: Colors.black),
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(height: 5),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(25.0),
          //       color: Colors.greenAccent[100],
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.all(10.0),
          //       child: Image.network(img1),
          //     ),
          //   ),
          // ),
          // SizedBox(height: 5),
          // Repeat the above pattern for other items
        ],
      ),
    );
  }
}
