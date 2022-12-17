import 'package:flutter/material.dart';
import 'package:google_signin/train_info.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String journeyStart = 'Indore';
  String journeyEnd = 'Pilani';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  onChanged: (value) {
                    journeyStart = value;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  onChanged: (value) {
                    journeyEnd = value;
                  },
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TrainData(startStation: journeyStart , endStation: journeyEnd,),
                      ));
                },
                child: const Text(
                  'Get Trains',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}