import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(centerTitle: true, title: Text('Calculator'),backgroundColor: Colors.grey),
        body: Padding(padding: EdgeInsets.all(2),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('5+5', style: TextStyle(fontSize: 60),),
                Padding(padding: EdgeInsets.all(2)),
                Text('10', style: TextStyle(fontSize: 60),),
                Padding(padding: EdgeInsets.all(2)),
                Text('', style: TextStyle(fontSize: 80),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const[
                    Button(text: 'AC'),
                    Button(text: '+/-'),
                    Button(text: '%'),
                    Button(text: '/'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const[
                    Number(text: '7'),
                    Number(text: '8'),
                    Number(text: '9'),
                    Button(text: 'x'),
                  ],
                ),    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const[
                    Number(text: '4'),
                    Number(text: '5'),
                    Number(text: '6'),
                    Button(text: '-'),
                  ],
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const[
              Number(text: '1'),
              Number(text: '2'),
              Number(text: '3'),
              Button(text: '+'),
            ],
          ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const[
                    Button(text: '00'),
                    Button(text: '0'),
                    Button(text: '.'),
                    Button(text: '='),
                  ],
                ),

              ],

         )
        )
      );
  }
}


class Button extends StatelessWidget {
  final String text;
  const Button({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){},
      color: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Text(text, style: const TextStyle(
        fontSize: 50, color: Colors.white, fontWeight: FontWeight.w400,),),);
  }
}

class Number extends StatelessWidget {
  final String text;
  const Number({
    Key? key, required this.text,
  }) : super(key: key);

@override
  Widget build(BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: MaterialButton(onPressed: (){},
    color: Colors.grey,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Text(text, style: const TextStyle(
      fontSize: 50,color: Colors.white, fontWeight: FontWeight.w400,),),),
  );
}

}