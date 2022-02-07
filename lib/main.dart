import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
   playSound(int? sNo) {
    final player = AudioCache();
    player.play('note$sNo.wav');
  }

   buildButton({Color? color, int? sono,String? txt}) {
    return Expanded(
      child: FlatButton(
        child: Text(txt ?? ''),
        color: color,
        onPressed: () {
          playSound(sono);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(color: Colors.purple, sono: 1,txt: 'purple'),
              buildButton(color: Colors.indigo, sono: 2,txt: 'indigo'),
              buildButton(color: Colors.blue, sono: 3,txt:'blue'),
              buildButton(color: Colors.yellow, sono: 4,txt:'yellow'),
              buildButton(color: Colors.orange, sono: 5,txt: 'orange'),
              buildButton(color: Colors.green, sono: 6,txt: 'green'),
              buildButton(color: Colors.red, sono: 7,txt: 'red'),
            ],
          ),
        ),
      ),
    );
  }
}
