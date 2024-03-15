import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
class qrcode extends StatefulWidget {
  const qrcode({Key? key}) : super(key: key);

  @override
  State<qrcode> createState() => _qrcodeState();
}

class _qrcodeState extends State<qrcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('https://store-images.s-microsoft.com/image/apps.56161.9007199266246365.1d5a6a53-3c49-4f80-95d7-78d76b0e05d0.a3e87fea-e03e-4c0a-8f26-9ecef205fa7b?h=464'),),
            Container(
              child: QrImageView(
                data: 'https://www.netflix.com/in/',
                size: 200,

              ),
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: () {
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>const Camera()));
            },
                child: Text('SCAN'))
          ],
        ),
      ),
    );
  }
}