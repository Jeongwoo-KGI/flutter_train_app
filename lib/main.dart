import 'package:flutter/material.dart';
import 'package:srt_mock/pages/home/homepage.dart';
//import 'package:srt_mock/pages/seatpage.dart';
//import 'package:srt_mock/pages/stationlist.dart';

void main() {
  runApp(const FlutterTrainApp());
}

class FlutterTrainApp extends StatelessWidget{
  const FlutterTrainApp({super.key});

  //this widget is the root of the application
  //by running this code, it will allow the app to run
  //contains information of the overarching design and theme
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.light,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            textStyle: const WidgetStatePropertyAll(
              TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            backgroundColor: WidgetStatePropertyAll(Colors.purple),

          ),

        ),  
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 38, 45, 49),
          brightness: Brightness.dark,
        ),
      ),

      home: HomePage(),

    );
  }
}
