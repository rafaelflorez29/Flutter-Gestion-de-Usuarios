import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenAdmin extends StatelessWidget{
  const ScreenAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ElevatedButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text("Cerrar Sesion")),
      ),
    );
  }
}