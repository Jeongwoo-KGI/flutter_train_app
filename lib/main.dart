import 'package:flutter/material.dart';
import 'package:srt_mock/pages/home/homepage.dart';
import 'package:srt_mock/pages/seatpage.dart';
import 'package:srt_mock/pages/stationlist.dart';

void main() {
  runApp(const FlutterTrainApp());
}

class FlutterTrainApp extends StatelessWidget{
  const FlutterTrainApp({super.key});

  //this widget is the root of the application
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pinkAccent,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme(
            seedColor: Colors.pinkAccent,
            brightness: Brightness.dark,
          ),
        ),
        home: HomePage(),
        startStation: StationList('출발역'),
        returnStation: StationList('도착역'),
        seatselection: SeatPage(),
      ),
    )
  }
}
