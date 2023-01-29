// ignore_for_file: camel_case_types, must_be_immutable

import 'package:eatfit_528/purchase.dart';
import 'package:flutter/material.dart';

class datas extends StatefulWidget {

  Map data = {};
  datas(this.data, {super.key});

  @override
  State<datas> createState() => _datasState();
}

class _datasState extends State<datas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Every Item Is Good !"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 256,
                height: 256,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.data['image']),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Divider(
              height: 2,
              thickness: 2,
              color: Colors.pinkAccent[400],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.data['name'],
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const Divider(
              height: 2,
              thickness: 2,
              color: Colors.purpleAccent,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.data['des'],
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Divider(
              height: 2,
              thickness: 2,
              color: Colors.pinkAccent[100],
            ),

            const SizedBox(height: 25),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const takeit()));
            }, child: const Text('Order It',style: TextStyle(fontWeight: FontWeight.w900),))
          ],
        ),
      ),
    );
  }
}