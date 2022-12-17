import 'package:flutter/material.dart';
import 'package:google_signin/train_info.dart';
import 'package:google_signin/networking.dart';

class TrainDetails extends StatefulWidget {
  TrainDetails({required this.trainNo});

  int trainNo;

  Future<dynamic> getTrainBetweenStations(String journeyStart, String journeyEnd) async {
    NetworkHelper networkHelper = NetworkHelper(
        'https://irctc1.p.rapidapi.com/api/v1/getTrainSchedule?trainNo=$trainNo');

    var trainDetailsData = await networkHelper.getData();
    return trainDetailsData ;
  }

  @override
  State<TrainDetails> createState() => _TrainDetailsState();
}

class _TrainDetailsState extends State<TrainDetails> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}