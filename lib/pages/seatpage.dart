import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/** [기차 좌석 선택 페이지]
 * 디자인 명세: https://teamsparta.notion.site/Flutter-1382dc3ef5148016be70dc0eba47e9a8
 * 
 */

class SeatPage extends StatefulWidget{
  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  int? selectedRow;
  int? selectedCol;
  void onSelected(int rowNum, int colNum){
    setState((){
      selectedCol = colNum;
      selectedRow = rowNum;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('좌석 선택'),
      ),
      body: Column(
        children: [
          SeatLayOut(selectedRow, selectedCol), //seat layouts to click on
          SelectionButton(selectedRow, selectedCol), //bottom most purple
        ],
      )
    );
  }
}

class SeatLayOut extends StatelessWidget{
  int columnNumber;
  int rowNumber;

  SeatLayOut(this.rowNumber, this.columnNumber);


  @override
  Widget build(BuildContext context) {
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text('A'), Text('B'), Text(""), Text("C"), Text("D")],)
        for(int i = 1; i<21; i++) SeatRow(i),
      ],
    )
  }

  Padding SeatRow(int i) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
        ],
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

class SelectionButton extends StatelessWidget {
  int? rowNum;
  int? colNum;

  SelectionButton(this.rowNum, this.colNum);

  @override
  Widget build(BuildContext context) {
    SizedBox(
      width:200,
      height:56,
      child: ElevatedButton(
        onPressed: () {
          showCupertinoDialog<void> (
            context: context,
            builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text('예매하시겠습니까?'),
              actions: [
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    '취소',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                CupertinoDialogAction(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: const Text(
                    '확인',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          );
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
        child: Text(
          '예매하기',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

