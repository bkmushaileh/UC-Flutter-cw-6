import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/building_class.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key, required this.building});

  final Building building;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(155, 194, 226, 1),
      ),
      body: Center(
        child: Column(children: [
          Container(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(building.imgName),
              radius: 130,
            ),
          ),
          Container(
            height: 50,
          ),
          Text(
            building.name,
            style:
                TextStyle(color: Color.fromARGB(255, 2, 56, 99), fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Text(
              building.desciption,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 30, 50, 167)),
            ),
          ),
        ]),
      ),
    );
  }
}
