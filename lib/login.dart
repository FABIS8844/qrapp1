import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:qrapp1/qrcode.dart';
import 'package:qrapp1/reg.dart';

class Login extends StatefulWidget {
const Login ({Key? key}) : super(key: key);

@override
State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
@override
Widget build(BuildContext context) {
return Scaffold(backgroundColor: Colors.white,
appBar: AppBar(
title: Text('login')),
body: Center(
child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [
Padding(
padding: const EdgeInsets.all(20.0),
child: TextField(decoration: InputDecoration(
border: OutlineInputBorder(),
labelText: 'USERNAME',
hintText: ''
),  ),
),
Padding(
padding: const EdgeInsets.all(20.0),
child: TextField(decoration: InputDecoration(
border: OutlineInputBorder(),
labelText: 'PASSWORD',
hintText: ''
),  ),
),
SizedBox(height: 30,),
TextButton(onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>const qrcode()));
}, child: Text('LOGIN'),
style: ButtonStyle(
foregroundColor: MaterialStateProperty.all<Color>(
Colors.black87)
),
),
SizedBox(height: 30,),
RichText(text: TextSpan(
text: 'REGISTRATION', recognizer: TapGestureRecognizer
()..onTap = () =>
Navigator.push(context, MaterialPageRoute(
builder: (context) => const registration()))))
],
),
),
);
}
}