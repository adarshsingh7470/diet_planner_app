import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmiCalcScreen.dart';
import 'bmiCalcScreenn.dart';

class GenderSelection extends StatefulWidget {
  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String gender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[200],
        elevation: 0.0,
        title: Text(
          "Diet Plan",
          style: TextStyle(fontSize: 50, color: Colors.white, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      gender = "male";
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BmiCalcScreen(gender: "male")),
                      );
                    });
                  },
                  child: GenderOption(
                    imagePath: "assets/images/malee.png",
                    genderText: "Male",
                    selected: gender == "male",
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      gender = "female";
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BmiCalcScreenn(gender: "female")),
                      );
                    });
                  },
                  child: GenderOption(
                    imagePath: "assets/images/female.png",
                    genderText: "Female",
                    selected: gender == "female",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GenderOption extends StatelessWidget {
  final String imagePath;
  final String genderText;
  final bool selected;

  const GenderOption({
    Key? key,
    required this.imagePath,
    required this.genderText,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? Colors.blueAccent : Colors.white54,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 110,
            width: 130,
            color: selected ? Colors.black : null,
          ),
          SizedBox(height: 10),
          Text(
            genderText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
