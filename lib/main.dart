
import 'package:dummy2/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Justapp());
}
class Justapp extends StatelessWidget {
  const Justapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}