import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const new({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState(){
    super.initState();


  }

  Future<void> CheckLogin()async {

await Future.delayed(Duration(seconds: 5));

final prefs = await SharedPreferences.getInstance();

bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}