import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CORRALESEA5());

Expanded keys(int X, Color color) {
  return Expanded(
    child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('note$X.wav'));
        },
        child: Container()),
  );
}

class CORRALESEA5 extends StatelessWidget {
  const CORRALESEA5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
      child: Column(
        children: [
          keys(1, Colors.red),
          keys(2, Colors.orange),
          keys(3, Colors.yellow),
          keys(4, Colors.green),
          keys(5, Colors.teal),
          keys(6, Colors.blue),
          keys(7, Colors.indigo),
        ],
      ),
    )));
  }
}
