/** [기차역 리스트 화면]
 * 디자인 명세: https://teamsparta.notion.site/Flutter-1382dc3ef5148016be70dc0eba47e9a8
 * 기차역 : 수서, 동탄, 평택지제, 천안아산, 오송, 대전 김천구미, 동대구, 경주, 울산 부산
 * 앱바 타이틀: 글자에 별도의 스타일 미지정
 * 뒤로가기 버튼: AppBar기본 UI 사용
 * 기차역 이름: 크기 18, 두께 FontWeight.bold
 * 기차역 이름 감싸고 있는 영역: 높이 50, 테두리 아래에만 Colors.gray[300]! 
 */


import 'package:flutter/material.dart';


class StationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold{
      appBar: AppBar(
        title: Text(), //ToDo: 출발역/도착역 이름 받아오기
      )
    }
  }
}