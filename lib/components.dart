import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget newsItem({required BuildContext context, required int index}) => InkWell(
  onTap: () {
    // Handle the tap event
  },
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
    ),
    height: 280,
    width: 400,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blue[200],
            ),
            width: 400,
            height: 200,
            // Placeholder for the news content
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "News Title",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text(
                "News Description",
                style: TextStyle(fontSize: 15, color: Colors.grey[500]),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
