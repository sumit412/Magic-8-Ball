import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me'),
          backgroundColor: Colors.green,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {

int img=1;

@override
Widget build(BuildContext context) {
return Center(
child: ElevatedButton(
onPressed: (){
setState(() {
img = Random().nextInt(4)+1;
});
},
child: Image.asset('assets/images/ball$img.png'))
);
}
}
