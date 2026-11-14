import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const new({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameController= TextEditingController();
  final passwordController= TextEditingController();

  @override
  void dispose(){
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("LOGIN",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: "Enter your name",
                border: OutlineInputBorder(),

              ),
            ),
            SizedBox(height: 20,),
             TextField(
              controller:passwordController,
              decoration: InputDecoration(
                labelText: "Enter your password",
                border: OutlineInputBorder(),

              ),
            ),

            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){},
             child: Text("login")
             )
          ],
        ),
      ),
    );
  }
}