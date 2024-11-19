/** Widgets used for home page
 * 중간의 역 선택 하는 위젯
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class selectStation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //Get.put(textControl4Home());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //출발역
        StationBox('출발역','선택'),
        //separator column

        //도착역
        StationBox('도착역','선택'),
      ]
    );
  }
}

class StationBox extends StatelessWidget {
  String direction;
  String destined;

  StationBox(this.direction, this.destined);
  //this.direction;
  //this.destined = destined;
  @override
  Widget build(BuildContext context) {
    //Get.put(TextControl4Home());
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(direction),
          Text(destined),
        ],
      )
      
    );
  }
}

class TextControl4Home extends GetxController{
  String defaultStatement = '선택';
  List<String> stationNames = ['선택', "수서", '동탄', '평택지제', '천안아산', '오송', '대전', '김천구미', '동대구', '경주', '울산', '부산'];

  void changeText(int i){
    defaultStatement = stationNames[i];
    update();
  }
}