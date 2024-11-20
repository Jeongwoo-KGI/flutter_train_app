/** Widgets used for home page
 * HomePage에서 역 선택 하는 위젯
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

//역을 선택하는 버튼 
class selectStation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,

      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
            //출발역
            StationBox(context,'출발역','선택'),
            //filler
            Container(
              width: 40,
              height: 2
            ),
            //separator column
            Container(
              width: 2,
              color: Colors.grey.shade400,
              height: 50,
            ),
            //filler
            Container(
              width: 40,
              height: 2,
            ),
            //도착역
            StationBox(context,'도착역','선택'),
          ]
        ),
      ),
    );
  }
}

//역을 선택하는 버튼 모양 정의 및 보여야 할 글
class StationBox extends StatelessWidget {
  BuildContext context;
  String direction;
  String destined;

  StationBox(this.context, this.direction, this.destined);
  //this.direction;
  //this.destined = destined;
  @override
  Widget build(BuildContext context) {
    //Get.put(TextControl4Home());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          direction,
          style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        Text(
          destined,
          style: TextStyle(fontSize:40),
        ),
      ],
    );
  }

  //method for changing the values

}

//보여야 할 역 이름 관리
class TextControl4Home extends GetxController{
  String defaultStatement = '선택';
  List<String> stationNames = ['선택', "수서", '동탄', '평택지제', '천안아산', '오송', '대전', '김천구미', '동대구', '경주', '울산', '부산'];

  void changeText(int i){
    defaultStatement = stationNames[i];
    update();
  }
}