import 'package:dummy2/home.dart';
import 'package:dummy2/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState(){
    super.initState();

CheckLogin();
  }

  Future<void> CheckLogin()async {

await Future.delayed(Duration(seconds: 5));

final prefs = await SharedPreferences.getInstance();

bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;


String? username = prefs.getString("username");

if(!mounted) return;

if(isLoggedIn){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home(username: username ?? "")));
}else{
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));

}



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    );
  }
}