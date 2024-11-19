/**[기차 예매 서비스 홈페이지]
 * 기능: 출발역, 도착역 선택 초기 화면
 * 디자인 명세: https://teamsparta.notion.site/Flutter-1382dc3ef5148016be70dc0eba47e9a8
 */

import 'package:flutter/material.dart';
import 'package:srt_mock/pages/home/widgets/homewidgets.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('기차 예매')
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(children: [
          selectStation(),
          //좌석선택 버튼
          SizedBox( //ToDo: details
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('좌석 선택')
            )
          )

          
        ],)
      )
    );
  }
}
