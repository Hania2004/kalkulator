import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(centerTitle: true, title: Text('Calculator'),backgroundColor: Colors.grey),
        body: Padding(padding: EdgeInsets.all(10),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('5+5', style: TextStyle(fontSize: 60),),
                Padding(padding: EdgeInsets.all(6)),
                Text('10', style: TextStyle(fontSize: 60),),
                Padding(padding: EdgeInsets.all(6)),
                Text('', style: TextStyle(fontSize: 80),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('7', style: TextStyle(fontSize: 70)),
                    Text('8', style: TextStyle(fontSize: 70)),
                    Text('9', style: TextStyle(fontSize: 70)),
                    Text('+', style: TextStyle(fontSize: 70)),
                  ],
                ),    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('4', style: TextStyle(fontSize: 70)),
                    Text('5', style: TextStyle(fontSize: 70)),
                    Text('6', style: TextStyle(fontSize: 70)),
                    Text('-', style: TextStyle(fontSize: 70)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('C', style: TextStyle(fontSize: 70)),
                    Text('0', style: TextStyle(fontSize: 70)),
                    Text('=', style: TextStyle(fontSize: 70)),
                    Text('/', style: TextStyle(fontSize: 70)),
                  ],
                ),

              ],

         )
        )
      );
  }
}























//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