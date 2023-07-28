import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'booking.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary"),
        backgroundColor: Colors.amber[600],
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Icon(Icons.settings),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(child: content()),
    );
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.amber[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Image.asset(
                  'images/taxi.png',
                  width: 160,
                  height: 160,
                ),
                Text(
                  "\$20",
                  style: TextStyle(fontSize: 50),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          locationInputField("XXX,XXX", false),
          Text("|\n|"),
          locationInputField("XXX,XXX", false),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Rate your last ride : ",
                  style: TextStyle(fontSize: 15),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          RatingBar.builder(
              initialRating: 0,
              itemPadding: EdgeInsets.all(10),
              itemCount: 5,
              itemBuilder: ((context, index) => Icon(
                Icons.star,
                color: Colors.yellow,
              )),
              onRatingUpdate: (value) {}),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.amber[600],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
