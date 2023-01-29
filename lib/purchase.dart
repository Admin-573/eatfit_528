// ignore: duplicate_ignore
// ignore_for_file: camel_case_types, duplicate_ignore

import 'package:flutter/material.dart';

class takeit extends StatefulWidget {
  const takeit({Key? key}) : super(key: key);

  @override
  State<takeit> createState() => _takeitState();
}

// ignore: camel_case_types
class _takeitState extends State<takeit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 128),

            const Image(image: AssetImage('assets/thx.jpeg'),
              fit: BoxFit.cover,
              width: 512,
              alignment: Alignment.topCenter,),

            const SizedBox(height: 50),

            Image.network('https://cdn-icons-png.flaticon.com/512/3930/3930392.png',
              fit: BoxFit.cover,
              width: 256,
              alignment: Alignment.center,),

            const SizedBox(height: 50),

            const Image(image: AssetImage('assets/wait.jpeg'),
              fit: BoxFit.cover,
              width: 512,
              alignment: Alignment.bottomCenter ,)
          ],
        ),
      ),
    );
  }
}
