/**[기차 예매 서비스 홈페이지]
 * 기능: 출발역, 도착역 선택 초기 화면
 * 디자인 명세: https://teamsparta.notion.site/Flutter-1382dc3ef5148016be70dc0eba47e9a8
 */

import 'package:flutter/material.dart';
import 'package:srt_mock/pages/home/widgets/homewidgets.dart';
//import 'package:srt_mock/pages/seatpage.dart';

//홈페이지의 일반적인 Structure 
class HomePage extends StatefulWidget{
  List<String> stations = ['수서', '천안아산', '김천구미', '동탄', '평택지제', '오송', '대전', '동대구', '경주', '울산', '부산'];
  
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  String departure = '선택';
  String arrival = '선택';

  void departureStation(String outbound) {
    setState(() {
      departure = outbound;
    });
  }

  void arrivalStation(String inbound) {
    setState(() {
      arrival = inbound;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('기차 예매')
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(children: [
          const SizedBox(
            height: 200,
            width: double.infinity,
          ),
          selectStation(),
          //좌석선택 버튼 사이 간격
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          //좌석선택 버튼
          SizedBox(
            width: double.infinity,
            //height: ,
            child: FilledButton(
              style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),        
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage(); // ToDo: SeatPage(departure: departure!, arrival: arrival!); //SeatPage();
                    },
                    settings: RouteSettings(
                      arguments: [departure, arrival], //넘길 값
                    )
                  )
                );
              },
              child: const Text('좌석 선택')
            )
          )

          
        ],)
      )
    );
  }
}
