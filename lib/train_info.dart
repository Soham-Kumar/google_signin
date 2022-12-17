import 'package:flutter/material.dart';
import 'package:google_signin/networking.dart';
import 'package:google_signin/details.dart';

const apiKey = "18af1cdc35msh487e0f4a2175322p1a4673jsnea2c3e98dd82";

 class TrainData {
   TrainData({required this.startStation,required this.endStation});

   String startStation;
   String endStation;

  Future<dynamic> getTrainBetweenStations(String startStation, String endStation) async {
    NetworkHelper networkHelper = NetworkHelper(
        'https://irctc1.p.rapidapi.com/api/v2/trainBetweenStations');

    var trainBetweenStationsData = await networkHelper.getData();
    return trainBetweenStationsData ;
  }

  @override
  State<TrainData> createState() => _TrainDataState();
}

class _TrainDataState extends State<TrainData> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                const Text(
                  "trainBetweenStationsData[{}]['data'][0]['train_number']",
                ),
                const Text(
                  "trainBetweenStationsData[{}]['data'][0]['train_name']",
                ),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrainDetails( trainNo: TrainData.getTrainBetweenStations[{}]['data'][0]['train_number'] ),
                        ));
                  },
                  child: const Text(
                      "Get Details"
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}