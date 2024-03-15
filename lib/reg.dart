import 'package:flutter/material.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('REGISTRATION'),),
        body:Center(
          child:
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Name',
                    hintText: ''
                ),  ),
              ),
              SizedBox(
                height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter DOB',
                    hintText: ''
                ),  ),
              ),
              SizedBox(
                height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: ''
                ),  ),
              ),
              SizedBox(
                height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: ''
                ),  ),
              ),
              SizedBox(
                height: 20,),
              TextButton(onPressed: null, child: Text('Register',style: TextStyle(color: Colors.greenAccent),))

            ],),
        )
    );
  }
}