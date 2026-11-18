
import 'package:dummy2/home.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("Student data");
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