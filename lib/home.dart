import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
final nameController=TextEditingController();
final ageController=TextEditingController();

@override
  void dispose(){
    super.dispose();
    nameController.dispose();
    ageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(172, 255, 193, 7),
      appBar: AppBar(
        title: Text("Student",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),),
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
controller: nameController,
            decoration: InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15,),
           TextField(
            controller: ageController,
            decoration: InputDecoration(
              labelText: "Age",
              border: OutlineInputBorder(),
            ),
          ),
                 SizedBox(height: 15,),
                 ElevatedButton(style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black87
                 ),
                  onPressed: (){}
                 , child: Text("Save"))

        ],
      ),
      ),

    );
  }
}