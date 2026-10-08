import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestion_usuarios/screen/screen_admin.dart';
import 'package:gestion_usuarios/screen/screen_login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => ScreenLogin(),
        "/admin": (context) => ScreenAdmin(),
      },
    );
  }
}