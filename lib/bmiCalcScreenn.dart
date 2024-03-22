import 'package:dietplan/resultScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class BmiCalcScreen extends StatefulWidget {
  final String gender;
  BmiCalcScreen({required this.gender});

  @override
  State<BmiCalcScreen> createState() => _BmiCalcScreenState();
}

class _BmiCalcScreenState extends State<BmiCalcScreen> {
  int height = 180;
  int weight = 60;
  int age = 20;
  bool colour = false;
  String calculate = '';
  String diet1 = '';
  String diet2 = '';
  String diet3 = '';
  String diet4 = '';
  String diet5 = '';
  String diet6 = '';
  String img1 = '';
  String img2 = '';
  String img3 = '';
  String img4 = '';
  String img5 = '';
  String img6 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0.0,
        title: Text(
          "Diet Plan",
          style: TextStyle(fontSize: 43, color: Colors.white, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            children: [
        Expanded(
        child: Column(
        children: [
            Padding(
            padding: const EdgeInsets.all(1.0),
        child: Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.pinkAccent[100],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Height",
                  style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(), style: TextStyle(color: Colors.black, fontSize: 30)),
                    Text("CM", style: TextStyle(color: Colors.black, fontSize: 25)),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: Color(0xFF8D8E98),
                    activeTrackColor: Colors.white60,
                    thumbColor: Colors.white,
                    overlayColor: Colors.black38,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(height: 20),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.pinkAccent[100],
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Weight",
                  style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 5),
                Text(weight.toString(), style: TextStyle(color: Colors.black, fontSize: 30)),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          weight--;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.remove, color: Colors.pinkAccent),
                      ),
                    ),
                    SizedBox(width: 80),
                    InkWell(
                      onTap: () {
                        setState(() {
                          weight++;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.add, color: Colors.pinkAccent),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(height: 20),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.pinkAccent[100],
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Age",
                  style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 5),
                Text(age.toString(), style: TextStyle(color: Colors.black, fontSize: 30)),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          age--;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.remove, color: Colors.pinkAccent),
                      ),
                    ),
                    SizedBox(width: 80),
                    InkWell(
                      onTap: () {
                        setState(() {
                          age++;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.add, color: Colors.pinkAccent),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      ],
    ),
    ),
    SizedBox(height: 30),
    InkWell(
    onTap: () {
    setState(() {
    double _bmi = weight / pow(height / 100, 2);
    if (_bmi >= 25) {
    calculate = "You are overweight";
    diet1 = '1. Eat all the nutrients that the body needs';
    diet2 = '2. Eat at regular times during the day';
    diet3 = '3. Use a smaller plate';
    diet4 = '4. Do more sports';
    diet5 = '5. Drink plenty of water';
    diet6 = '6. Read food labels and try to choose healthier options and calculate your calories';
    img1 = 'https://th.bing.com/th/id/R.50599d900de4c9bd69365d0ab90fcf7c?rik=IVhzCQW%2bcSKzNA&riu=http%3a%2f%2fprod.static9.net.au%2f_%2fmedia%2f2019%2f01%2f15%2f14%2f42%2fhealthy_eating.jpg&ehk=QalAx5IuNWfYwvQ%2fGU9tCefRqIjXn0CUrmpv29BTddo%3d&risl=&pid=ImgRaw&r=0';
    img2 = 'https://www.inlife
