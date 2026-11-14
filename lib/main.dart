import 'package:dummy2/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Justapp());
}
class Justapp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}