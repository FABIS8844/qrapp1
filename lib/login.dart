import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qrapp1/qrcode.dart';
import 'package:qrapp1/reg.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController  rollno = TextEditingController();
  final TextEditingController password = TextEditingController();

  void login() async {
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
    var response = await http.post(uri,
        headers: <String, String>{
          'content-type': 'application/jason,charset=UTF-8',
        },
        body: jsonEncode({
          'rollno': rollno.text,
          'password': password.text,
        }));
    var data=jsonDecode(response.body);
    print(data('nulll'));
    if(response.statusCode==200){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>qrcode()
      ));
      print('success');
  }
  else(ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(data['SOMETHING WENT WRONG']))),
  )
    ;




  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('login')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'rollno',
                    hintText: 'rollno'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'PASSWORD',
                    hintText: 'Enter your password'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const qrcode()));
              },
              child: Text('LOGIN'),
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black87)),
            ),
            SizedBox(
              height: 30,
            ),
            RichText(
                text: TextSpan(
                    text: 'REGISTRATION',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const registration()))))
          ],
        ),
      ),
    );
  }
}
