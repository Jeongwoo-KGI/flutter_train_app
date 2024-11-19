import 'package:flutter/material.dart';

/** [기차 좌석 선택 페이지]
 * 디자인 명세: https://teamsparta.notion.site/Flutter-1382dc3ef5148016be70dc0eba47e9a8
 * 
 */

class SeatPage extends StatefulWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('좌석 선택');
      ),
      body: Column(
        children: [
          SeatLayOut(), //seat layouts to click on
          SelectionButton(), //bottom most purple
        ],
      )
    )
  }
}

class SeatLayOut extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text('A'), Text('B'), Text(""), Text("C"), Text("D")],)
          for(int i = 1; i<21; i++){
            SeatRow(i);
          },
      ],
    )
  }

  Padding SeatRow(int i) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        SeatBox(),
        SeatBox(),
        Expanded(
          child: Center(
            child: Text(
              '$i',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),

          )
        ),
        SeatBox(),
        SeatBox(),
      ),
    )
  }

  Widget SeatBox() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

}

