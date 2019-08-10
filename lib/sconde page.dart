import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:flutter_new/main.dart';
void main() => runApp(Seconde());

class Seconde extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp (
     home: secondehome(),
     debugShowCheckedModeBanner: false,
   );
  }
}

class secondehome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('my seconde Page'),
      ),
    );
  }


}