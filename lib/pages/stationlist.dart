/** [기차역 리스트 화면]
 * 디자인 명세: https://teamsparta.notion.site/Flutter-1382dc3ef5148016be70dc0eba47e9a8
 * 기차역 : 수서, 동탄, 평택지제, 천안아산, 오송, 대전 김천구미, 동대구, 경주, 울산 부산
 * 앱바 타이틀: 글자에 별도의 스타일 미지정
 * 뒤로가기 버튼: AppBar기본 UI 사용
 * 기차역 이름: 크기 18, 두께 FontWeight.bold
 * 기차역 이름 감싸고 있는 영역: 높이 50, 테두리 아래에만 Colors.gray[300]! 
 */


import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

//Column 형태로 보여야 할 역의 이름들 
class StationList extends StatelessWidget {
  String direction;

  StationList(this.direction);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(direction), //ToDo: 출발역/도착역 이름 받아오기
      ),
      body: Column(
        children: [
          NameBox('수서'),
          NameBox('동탄'),
          NameBox('평택지제'),
          NameBox('천안아산'),
          NameBox('오송'),
          NameBox('대전'),
          NameBox('김천구미'),
          NameBox('동대구'),
          NameBox('경주'),
          NameBox('울산'),
          NameBox('부산'),
        ],
      ),
    );
  } 
}

//각 역이름이 적힌 버튼의 모양과 내용지정
class NameBox extends StatelessWidget{
  String stationName;
  NameBox(this.stationName);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //ToDo: change the size of the box
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: () {
          Navigator.of(context).pop();

        },
        child: Text(stationName),
      ),
    );
  }
}