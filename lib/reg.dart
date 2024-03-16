import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

import 'login.dart';

class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);



  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final TextEditingController _name=TextEditingController();
  final TextEditingController _dob=TextEditingController();
  final TextEditingController _username=TextEditingController();
  final TextEditingController _password=TextEditingController();


  bool loading=false;
  void registration()async{
    Uri uri=Uri.parse('https://scnner-web.onrender.com/api/register');
    var response=await http.post(uri,
    headers: <String,String>{
      'content-type':'application/jason,charset=UTF-8',
        },
        body:jsonEncode({
        'name':_name.text,
        'dob':_name.text,
        'username':_username.text,
        'password':_password.text,
        }));
       print(response.statusCode);
       print(response.body);
       var data=jsonDecode(response.body);
       if(response.statusCode==200){
         Navigator.push(context, MaterialPageRoute(builder: (Context)=>Login()));

       }
       else{
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('error'),));

       }
        print(_name.text);
        print(_dob.text);
        print(_username.text);
        print(_password.text);
  }

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
                child: TextField(controller:_name,decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Name',
                    hintText: ''
                ),  ),
              ),
              SizedBox(
                height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(controller:_dob,decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter DOB',
                    hintText: ''
                ),  ),
              ),
              SizedBox(
                height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(controller:_username,decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: ''
                ),  ),
              ),
              SizedBox(
                height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(controller:_password,decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: ''
                ),  ),
              ),
              SizedBox(
                height: 20,),
              TextButton(onPressed: registration, child: Text('Register',style: TextStyle(color: Colors.greenAccent),))

            ],),
        )
    );
  }
}